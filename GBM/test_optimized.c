#include <math.h>    // For sqrt
#include "test.h"

void GBM(double S[STOCKS], double S0, double r, double sigma, double T, double random_increments[STOCKS * (STEPS-1)]) {
    #pragma HLS INTERFACE m_axi port=S offset=slave bundle=gmem0
    #pragma HLS INTERFACE m_axi port=random_increments offset=slave bundle=gmem1
    #pragma HLS INTERFACE s_axilite port=S0 bundle=control
    #pragma HLS INTERFACE s_axilite port=r bundle=control
    #pragma HLS INTERFACE s_axilite port=sigma bundle=control
    #pragma HLS INTERFACE s_axilite port=T bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control
    
    // Partition arrays for parallel access
    #pragma HLS ARRAY_PARTITION variable=S complete
    #pragma HLS ARRAY_PARTITION variable=random_increments cyclic factor=100
    
    double deltat = T / STEPS;
    double half_sigma_sq = 0.5 * sigma * sigma;
    double sqrt_deltat = sqrt(deltat);
    double drift = (r - half_sigma_sq) * deltat;
    
    // Initialize all stock prices in parallel
    #pragma HLS UNROLL factor=100
    for (int m = 0; m < STOCKS; m++) {
        S[m] = S0;
    }
    
    // Process all stocks in parallel
    #pragma HLS UNROLL factor=100
    for (int m = 0; m < STOCKS; m++) {
        // Pipeline the time steps
        #pragma HLS PIPELINE II=1
        for (int j = 0; j < (STEPS-1); j++) {
            double random_val = random_increments[m * (STEPS-1) + j];
            double exponent = drift + sigma * random_val * sqrt_deltat;
            S[m] *= exp(exponent);
        }
    }
}
