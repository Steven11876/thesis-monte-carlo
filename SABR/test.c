#include <assert.h>
#include <stdlib.h>  // For malloc and free, rand
#include <math.h>    // For sqrt
#include <stdio.h>   // For printf

#define STEPS 50
#define STOCKS 100

void
SABR(double S[STOCKS], double V[STOCKS], double S0, double r, double sigma_init, double alpha, double beta, double rho, double T, double random_increments[2*STOCKS * (STEPS-1)] ) {
    double deltat = T / STEPS; // can make deltat exactly what we need it to be, make deltat size of t
    for (int m = 0; m < STOCKS; m++) {
        S[m] = S0;       // Set the first column to the initial stock price S0
        V[m] = sigma_init;
    }
    
    for (int m = 0; m < STOCKS; m++) {
        
        for (int j = 0; j < (STEPS-1); j++) {
            // Update stock prices
            double z1 = random_increments[2*m * (STEPS-1) + 2*j]* sqrt(deltat);
            double z2 = rho*z1 + sqrt(1-rho*rho) * random_increments[2*m * (STEPS-1) + 2*j+1]* sqrt(deltat);

            S[m] = S[m]*(1+r*deltat)+V[m]*pow(S[m],beta)*z1;
            V[m] *= exp(-0.5 * alpha * alpha * deltat + alpha * z2);
        }
    }
    //return S;
}
