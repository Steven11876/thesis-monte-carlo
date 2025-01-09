#include <assert.h>
#include <stdlib.h>  // For malloc and free, rand
#include <math.h>    // For sqrt
#include <stdio.h>   // For printf

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



// Recursion (refactor to iteration)
// Indirect memory addressing
// Random memory accesses outside of a known scope
// Hard loop-carried dependencies (not a deal-breaker, but HLS performs better with either none or very few data dependencies)
// Recursive datatypes such as trees or linked lists (can refactor into an array)
// Really complicated pointer arithmetic (most of the time can easily refactor)
// Hard data dependences in external memory transactions (implement local caching)
// Pointers to functions
// Imperfectly nested loops with dynamic exit conditions

