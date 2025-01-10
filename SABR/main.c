#include <assert.h>
#include <stdlib.h>  // For malloc and free, rand
#include <math.h>    // For sqrt
#include <stdio.h>   // For printf
#include <math.h>

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


int 
main() {
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
    double* V = (double*)malloc(STOCKS * sizeof(double));

    SABR(S, V, S0, r, sigma_init, alpha, beta, rho, T, random_increments);
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

