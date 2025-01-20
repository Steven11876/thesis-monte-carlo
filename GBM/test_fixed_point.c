#include <math.h>
#include "test.h"
#include "fixed_point.h"

// Fixed point exponential approximation using Taylor series
// exp(x) ≈ 1 + x + x²/2! + x³/3! + x⁴/4! + x⁵/5!
int fixed_exp(int x) {
    const int one = FIXED_POINT_FACTOR;
    const int half = FIXED_POINT_FACTOR / 2;
    const int third = FIXED_POINT_FACTOR / 6;    // 1/3!
    const int fourth = FIXED_POINT_FACTOR / 24;  // 1/4!
    const int fifth = FIXED_POINT_FACTOR / 120;  // 1/5!
    
    int x2 = FIXED_MUL(x, x);
    int x3 = FIXED_MUL(x2, x);
    int x4 = FIXED_MUL(x3, x);
    int x5 = FIXED_MUL(x4, x);
    
    return one + x + 
           FIXED_MUL(x2, half) + 
           FIXED_MUL(x3, third) + 
           FIXED_MUL(x4, fourth) + 
           FIXED_MUL(x5, fifth);
}

// Fixed point square root using Newton's method
int fixed_sqrt(int x) {
    if (x <= 0) return 0;
    
    int result = x;
    int prev;
    int iterations = 0;
    
    do {
        prev = result;
        result = (result + FIXED_DIV(x, result)) >> 1;
        iterations++;
    } while ((result != prev) && (iterations < 10));  // Limit iterations and check for convergence
    
    return result;
}

void GBM(double S[STOCKS], double S0, double r, double sigma, double T, double random_increments[STOCKS * (STEPS-1)]) {
    // Fixed-point arrays
    int S_fixed[STOCKS];
    
    // Partition arrays for parallel access
    #pragma HLS ARRAY_PARTITION variable=S_fixed complete
    #pragma HLS ARRAY_PARTITION variable=random_increments block factor=STOCKS
    
    // Convert input parameters to fixed point
    int S0_fixed = DOUBLE_TO_FIXED(S0);
    int r_fixed = DOUBLE_TO_FIXED(r);
    int sigma_fixed = DOUBLE_TO_FIXED(sigma);
    int T_fixed = DOUBLE_TO_FIXED(T);
    
    // Calculate intermediate values in fixed point
    int deltat_fixed = FIXED_DIV(T_fixed, DOUBLE_TO_FIXED(STEPS));
    int sigma_sq_fixed = FIXED_MUL(sigma_fixed, sigma_fixed);
    int half_sigma_sq_fixed = FIXED_DIV(sigma_sq_fixed, DOUBLE_TO_FIXED(2.0));
    int sqrt_deltat_fixed = fixed_sqrt(deltat_fixed);
    int drift_fixed = FIXED_MUL((r_fixed - half_sigma_sq_fixed), deltat_fixed);
    
    // Initialize all stock prices in parallel
    for (int m = 0; m < STOCKS; m++) {
        #pragma HLS UNROLL factor=STOCKS
        S_fixed[m] = S0_fixed;
    }
    
    // Process all stocks in parallel
    for (int m = 0; m < STOCKS; m++) {
        #pragma HLS UNROLL factor=STOCKS
        
        // Pipeline the time steps
        for (int j = 0; j < (STEPS-1); j++) {
            // Convert random increment to fixed point
            int random_val_fixed = DOUBLE_TO_FIXED(random_increments[m * (STEPS-1) + j]);
            
            // Calculate exponent
            int sigma_term = FIXED_MUL(sigma_fixed, random_val_fixed);
            int sqrt_term = FIXED_MUL(sigma_term, sqrt_deltat_fixed);
            int exponent = drift_fixed + sqrt_term;
            
            // Calculate exponential and multiply
            int exp_result = fixed_exp(exponent);
            S_fixed[m] = FIXED_MUL(S_fixed[m], exp_result);
        }
        
        // Convert final result back to double
        S[m] = FIXED_TO_DOUBLE(S_fixed[m]);
    }
}
