#include <math.h>
#include "test.h"
#include "fixed_point.h"

void GBM(double S[STOCKS], double S0, double r, double sigma, double T, double random_increments[STOCKS * (STEPS-1)]) {
    // Fixed-point arrays
    int S_fixed[STOCKS];
    #pragma HLS ARRAY_PARTITION variable=S_fixed complete dim=1
    
    // Partition arrays for parallel access
    #pragma HLS ARRAY_PARTITION variable=random_increments cyclic factor=STOCKS dim=1
    
    // Convert input parameters to fixed point
    int S0_fixed = DOUBLE_TO_FIXED(S0);
    int r_fixed = DOUBLE_TO_FIXED(r);
    int sigma_fixed = DOUBLE_TO_FIXED(sigma);
    int T_fixed = DOUBLE_TO_FIXED(T);
    
    // Pre-calculate constants
    const int deltat_fixed = FIXED_DIV(T_fixed, DOUBLE_TO_FIXED(STEPS));
    const int sigma_sq_fixed = FIXED_MUL(sigma_fixed, sigma_fixed);
    const int half_sigma_sq_fixed = FIXED_DIV(sigma_sq_fixed, DOUBLE_TO_FIXED(2.0));
    
    // Inline fixed_sqrt for deltat
    int sqrt_deltat_fixed;
    {
        int x = deltat_fixed;
        if (x <= 0) {
            sqrt_deltat_fixed = 0;
        } else {
            int result = x;
            SQRT_LOOP: for(int i = 0; i < 10; i++) {
                #pragma HLS UNROLL
                int prev = result;
                result = (result + FIXED_DIV(x, result)) >> 1;
                if (result == prev) break;
            }
            sqrt_deltat_fixed = result;
        }
    }
    
    const int drift_fixed = FIXED_MUL((r_fixed - half_sigma_sq_fixed), deltat_fixed);
    
    // Initialize all stock prices in parallel
    INIT_LOOP: for (int m = 0; m < STOCKS; m++) {
        #pragma HLS UNROLL
        S_fixed[m] = S0_fixed;
    }
    
    // Process all stocks in parallel
    STOCK_LOOP: for (int m = 0; m < STOCKS; m++) {
        #pragma HLS UNROLL factor=STOCKS
        
        // Pipeline the time steps
        TIME_LOOP: for (int j = 0; j < (STEPS-1); j++) {
            
            // Convert random increment to fixed point
            int random_val_fixed = DOUBLE_TO_FIXED(random_increments[m * (STEPS-1) + j]);
            
            // Calculate exponent
            int sigma_term = FIXED_MUL(sigma_fixed, random_val_fixed);
            int sqrt_term = FIXED_MUL(sigma_term, sqrt_deltat_fixed);
            int exponent = drift_fixed + sqrt_term;
            
            // Inline fixed_exp
            int exp_result;
            {
                const int one = FIXED_POINT_FACTOR;
                const int half = FIXED_POINT_FACTOR / 2;
                const int third = FIXED_POINT_FACTOR / 6;    // 1/3!
                const int fourth = FIXED_POINT_FACTOR / 24;  // 1/4!
                const int fifth = FIXED_POINT_FACTOR / 120;  // 1/5!
                
                int x2 = FIXED_MUL(exponent, exponent);
                int x3 = FIXED_MUL(x2, exponent);
                int x4 = FIXED_MUL(x3, exponent);
                int x5 = FIXED_MUL(x4, exponent);
                
                exp_result = one + exponent + 
                            FIXED_MUL(x2, half) + 
                            FIXED_MUL(x3, third) + 
                            FIXED_MUL(x4, fourth) + 
                            FIXED_MUL(x5, fifth);
            }
            
            S_fixed[m] = FIXED_MUL(S_fixed[m], exp_result);
        }
        
        // Convert final result back to double
        S[m] = FIXED_TO_DOUBLE(S_fixed[m]);
    }
}
