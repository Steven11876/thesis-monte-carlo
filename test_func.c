#include <assert.h>
#include <stdlib.h>  // For malloc and free, rand
#include <stdio.h>   // For printf
#include "test.h"

// #define STEPS 100
// #define STOCKS 200


int 
main() {
    FILE *fp; 
    double S0 = 100.0; // Initial stock price
    double r = 0.05;   // Risk-free rate
    double sigma = 0.2; // Volatility
    double T = 1.0;    // Time horizon in years
    // int N = 100;       // Number of time steps
    // int i = 200;        // Number of stock prices to simulate
    double* random_increments = (double*)malloc(STOCKS * (STEPS-1) * sizeof(double)); //input 

    fp = fopen("in.dat", "r");
    // Read 200 * 99 doubles into the random_increments array
    for (int i = 0; i < STOCKS * (STEPS-1); i++) {
        fscanf(fp, "%lf", &random_increments[i]);  // Reading each double into random_increments array
    }
    fclose(fp);  // Close the file

    double* S = (double*)malloc(STOCKS * sizeof(double)); //output
    GBM(S, S0, r, sigma, T, random_increments);

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
