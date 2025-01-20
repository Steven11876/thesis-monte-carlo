#include <math.h>    // For sqrt
#include "test.h"

void GBM(double S[STOCKS], double S0, double r, double sigma, double T, double random_increments[STOCKS * (STEPS-1)]) {
    
    // Partition arrays for parallel access
    #pragma HLS ARRAY_PARTITION variable=S complete
    #pragma HLS ARRAY_PARTITION variable=random_increments block factor=STOCKS
    
    double deltat = T / STEPS;
    double half_sigma_sq = 0.5 * sigma * sigma;
    double sqrt_deltat = sqrt(deltat);
    double drift = (r - half_sigma_sq) * deltat;
    
    // Initialize all stock prices in parallel
    
    for (int m = 0; m < STOCKS; m++) {
        #pragma HLS UNROLL factor=STOCKS
        S[m] = S0;
    }
    
    // Process all stocks in parallel
    
    for (int m = 0; m < STOCKS; m++) {
        #pragma HLS UNROLL factor=STOCKS
        // Pipeline the time steps
        
        for (int j = 0; j < (STEPS-1); j++) {
            double random_val = random_increments[m * (STEPS-1) + j];
            double exponent = drift + sigma * random_val * sqrt_deltat;
            S[m] *= exp(exponent);
        }
    }
}
