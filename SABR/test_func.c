#include <assert.h>
#include <stdlib.h>  // For malloc and free, rand
#include <stdio.h>   // For printf
#include "test.h"

int main() {
    FILE *fp; 
    double S0 = 100.0; // Initial stock price
    double r = 0.05;   // Risk-free rate
    double T = 1.0;    // Time horizon in years
    double sigma_init = 0.5; // volatility
    double alpha = 0.3; // vol of vol
    double beta = 0.5; // Elasticity parameter
    double rho = 0.3; // Correlation of price and volatility
    // int N = 100;       // Number of time steps
    // int i = 200;        // Number of stock prices to simulate
    double* random_increments = (double*)malloc(2*STOCKS * (STEPS-1) * sizeof(double)); //input 

    fp = fopen("in.dat", "r");

    // Read 200 * 99 doubles into the random_increments array
    for (int i = 0; i < 2*STOCKS * (STEPS-1); i++) {
        fscanf(fp, "%lf", &random_increments[i]);  // Reading each double into random_increments array
    }
    
    fclose(fp);  // Close the file

    double* S = (double*)malloc(STOCKS * sizeof(double)); //output

    SABR(S, S0, r, sigma_init, alpha, beta, rho, T, random_increments);
    // fp = fopen("out.golden.dat", "w");

    // for (int m = 0; m < STOCKS; m++) {
    //     fprintf(fp, "%f\n",S[m]);
    // }

    // fclose(fp); // Close the file
    // printf("Stock prices written to out.golden.dat\n");

    fp = fopen("out.dat", "w");

    for (int m = 0; m < STOCKS; m++) {
        fprintf(fp, "%f\n", S[m]);
    }

    fclose(fp); // Close the file

    int retval = system("diff --brief -w out.dat out.golden.dat");
    if (retval != 0) {
        printf("Test failed!\n"); 
        retval = 1;
    } else {
        printf("Test passed!\n");
    }

    return retval;
}