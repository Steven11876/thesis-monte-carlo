#include <math.h>    // For sqrt
#include <stdlib.h>  // For malloc and free
#include <stdio.h>   // For printf
#include "test.h"

#define STEPS 50
#define STOCKS 100

void SABR(double S[STOCKS], double S0, double r, double sigma_init, double alpha, double beta, double rho, double T, double random_increments[2*STOCKS * (STEPS-1)]) {
    double deltat = T / STEPS;
    
    for (int m = 0; m < STOCKS; m++) {
        S[m] = S0;
    }
    
    for (int m = 0; m < STOCKS; m++) {
        double vol = sigma_init;
        
        for (int j = 0; j < (STEPS-1); j++) {
            // Calculate random increments
            double z1 = random_increments[2*m * (STEPS-1) + 2*j] * sqrt(deltat);
            double z2 = rho*z1 + sqrt(1-rho*rho) * random_increments[2*m * (STEPS-1) + 2*j+1] * sqrt(deltat);

            // Update stock price
            double stock_beta = pow(S[m], beta);
            double vol_term = vol * stock_beta * z1;
            S[m] = S[m]*(1+r*deltat) + vol_term;
            
            // Update volatility
            vol *= exp(-0.5 * alpha * alpha * deltat + alpha * z2);
        }
    }
}

int main() {
    FILE *fp; 
    double S0 = 100.0; // Initial stock price
    double r = 0.05;   // Risk-free rate
    double sigma_init = 0.5;  // Initial volatility
    double alpha = 0.3;  // Vol of vol
    double beta = 0.5;   // Elasticity parameter
    double rho = 0.3;    // Correlation
    double T = 1.0;    // Time horizon in years
    
    double* random_increments = (double*)malloc(2*STOCKS * (STEPS-1) * sizeof(double)); //input 
    double* S = (double*)malloc(STOCKS * sizeof(double)); //output

    fp = fopen("in.dat", "r");

    // Read doubles into the random_increments array
    for (int i = 0; i < 2*STOCKS * (STEPS-1); i++) {
        fscanf(fp, "%lf", &random_increments[i]);
    }
    
    fclose(fp);

    SABR(S, S0, r, sigma_init, alpha, beta, rho, T, random_increments);

    fp = fopen("out.dat", "w");

    for (int m = 0; m < STOCKS; m++) {
        fprintf(fp, "%f\n", S[m]);
    }

    fclose(fp);

    int retval = system("diff --brief -w out.dat out.golden.dat");
    if (retval != 0) {
        printf("Test failed!\n");
    } else {
        printf("Test passed!\n");
    }

    free(random_increments);
    free(S);
    return retval;
}
