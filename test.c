 
#include <math.h>    // For sqrt

#define STEPS 100
#define STOCKS 200

void
GBM(double S[STOCKS], double S0, double r, double sigma, double T, double random_increments[STOCKS * (STEPS-1)] ) {
    double deltat = T / STEPS; // can make deltat exactly what we need it to be, make deltat size of t

    for (int m = 0; m < STOCKS; m++) {
        S[m] = S0;       // Set the first column to the initial stock price S0
    }
    
    for (int m = 0; m < STOCKS; m++) {
        
        for (int j = 0; j < (STEPS-1); j++) {
            // Update stock prices
            S[m] *= exp((r - (0.5 * sigma * sigma)) * deltat + sigma * random_increments[m * (STEPS-1) + j] * sqrt(deltat));
        }
    }
    //return S;
}
