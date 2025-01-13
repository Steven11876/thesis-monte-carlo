#include <assert.h>
#include <stdlib.h>  // For malloc and free
#include <math.h>    // For sqrt
#include <stdio.h>   // For printf
#include <mach/mach_time.h>  // For mach_absolute_time

#define STEPS 50
#define STOCKS 100
#define NUM_RUNS 1000  // Number of times to run the benchmark

void SABR(double S[STOCKS], double V[STOCKS], double S0, double r, double sigma_init, double alpha, double beta, double rho, double T, double random_increments[2*STOCKS * (STEPS-1)]) {
    double deltat = T / STEPS;
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
}

int main() {
    FILE *fp; 
    double S0 = 100.0;       // Initial stock price
    double r = 0.05;         // Risk-free rate
    double T = 1.0;          // Time horizon in years
    double sigma_init = 0.5;  // Initial volatility
    double alpha = 0.3;      // Vol of vol
    double beta = 0.5;       // Elasticity parameter
    double rho = 0.3;        // Correlation of price and volatility

    // Allocate memory for inputs and outputs
    double* random_increments = (double*)malloc(2*STOCKS * (STEPS-1) * sizeof(double));
    double* S = (double*)malloc(STOCKS * sizeof(double));
    double* V = (double*)malloc(STOCKS * sizeof(double));
    
    uint64_t total_cycles = 0;
    uint64_t min_cycles = UINT64_MAX;
    uint64_t max_cycles = 0;

    // Get timebase info for conversion
    mach_timebase_info_data_t timebase;
    mach_timebase_info(&timebase);
    double ns_per_cycle = ((double)timebase.numer / timebase.denom);

    // Read input data
    fp = fopen("in.dat", "r");
    for (int i = 0; i < 2*STOCKS * (STEPS-1); i++) {
        fscanf(fp, "%lf", &random_increments[i]);
    }
    fclose(fp);

    // // Warm up the CPU and caches
    // for (int i = 0; i < 10; i++) {
    //     SABR(S, V, S0, r, sigma_init, alpha, beta, rho, T, random_increments);
    // }

    // Benchmark runs
    printf("Running benchmark for %d iterations...\n", NUM_RUNS);
    for (int run = 0; run < NUM_RUNS; run++) {
        uint64_t start = mach_absolute_time();
        SABR(S, V, S0, r, sigma_init, alpha, beta, rho, T, random_increments);
        uint64_t end = mach_absolute_time();
        
        uint64_t cycles = end - start;
        total_cycles += cycles;
        if (cycles < min_cycles) min_cycles = cycles;
        if (cycles > max_cycles) max_cycles = cycles;
        printf("Run %d: %.0f ns\n", run, cycles * ns_per_cycle);
    }

    // Print benchmark results
    printf("\nBenchmark Results:\n");
    printf("Average time: %.0f ns (%.0f cycles @ 3GHz)\n", 
           (total_cycles * ns_per_cycle) / NUM_RUNS,
           ((total_cycles * ns_per_cycle) / NUM_RUNS) * 3.0); // Assuming 3GHz CPU
    printf("Min time: %.0f ns (%.0f cycles @ 3GHz)\n", 
           min_cycles * ns_per_cycle,
           min_cycles * ns_per_cycle * 3.0);
    printf("Max time: %.0f ns (%.0f cycles @ 3GHz)\n", 
           max_cycles * ns_per_cycle,
           max_cycles * ns_per_cycle * 3.0);

    // Verify results
    fp = fopen("out.dat", "w");
    for (int m = 0; m < STOCKS; m++) {
        fprintf(fp, "%f\n", S[m]);
    }
    fclose(fp);

    int retval = system("diff --brief -w out.dat out.golden.dat");
    if (retval != 0) {
        printf("Test failed!\n"); 
        retval = 1;
    } else {
        printf("Test passed!\n");
    }

    free(random_increments);
    free(S);
    free(V);
    return retval;
}
