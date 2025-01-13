#include <math.h>    // For sqrt
#include "test.h"

void SABR(double S[STOCKS], double V[STOCKS], double S0, double r, double sigma_init, double alpha, double beta, double rho, double T, double random_increments[2*STOCKS * (STEPS-1)]) {
    
    // Partition arrays for parallel access
    #pragma HLS ARRAY_PARTITION variable=S complete
    #pragma HLS ARRAY_PARTITION variable=V complete
    #pragma HLS ARRAY_PARTITION variable=random_increments block factor=100
    
    double deltat = T / STEPS;
    double sqrt_deltat = sqrt(deltat);
    double half_alpha_sq = 0.5 * alpha * alpha;
    double neg_half_alpha_sq_dt = -half_alpha_sq * deltat;
    double one_minus_rho_sq = 1 - rho*rho;
    double sqrt_one_minus_rho_sq = sqrt(one_minus_rho_sq);
    double r_deltat = r * deltat;
    double one_plus_r_deltat = 1 + r_deltat;
    
    // Initialize all stock prices and volatilities in parallel
    for (int m = 0; m < STOCKS; m++) {
        #pragma HLS UNROLL factor=STOCKS
        S[m] = S0;
        V[m] = sigma_init;
    }
    
    // Process all stocks in parallel
    for (int m = 0; m < STOCKS; m++) {
        #pragma HLS UNROLL factor=STOCKS
        // Pipeline the time steps
        for (int j = 0; j < (STEPS-1); j++) {
            #pragma HLS PIPELINE
            
            // Pre-compute array indices
            int base_idx = 2*m * (STEPS-1);
            int z1_idx = base_idx + 2*j;
            int z2_idx = z1_idx + 1;
            
            // Calculate random increments
            double z1 = random_increments[z1_idx] * sqrt_deltat;
            double z2 = rho*z1 + sqrt_one_minus_rho_sq * random_increments[z2_idx] * sqrt_deltat;
            
            // Update stock price
            double stock_beta = pow(S[m], beta);
            double vol_term = V[m] * stock_beta * z1;
            S[m] = S[m] * one_plus_r_deltat + vol_term;
            
            // Update volatility
            double vol_exponent = neg_half_alpha_sq_dt + alpha * z2;
            V[m] *= exp(vol_exponent);
        }
    }
}
