#include <assert.h>
#include <stdlib.h>  // For malloc and free
#include <math.h>    // For sqrt
#include <stdio.h>   // For printf
#include <mach/mach_time.h>  // For mach_absolute_time
#include <limits.h>  // For LLONG_MAX

#define STEPS 50
#define STOCKS 100
#define NUM_RUNS 1000  // Number of times to run the benchmark

void GBM(double S[STOCKS], double S0, double r, double sigma, double T, double random_increments[STOCKS * (STEPS-1)]) {
    double deltat = T / STEPS;

    for (int m = 0; m < STOCKS; m++) {
        S[m] = S0;
    }
    
    for (int m = 0; m < STOCKS; m++) {
        for (int j = 0; j < (STEPS-1); j++) {
            S[m] *= exp((r - (0.5 * sigma * sigma)) * deltat + sigma * random_increments[m * (STEPS-1) + j] * sqrt(deltat));
        }
    }
}

int main() {
    FILE *fp; 
    double S0 = 100.0;
    double r = 0.05;
    double sigma = 0.2;
    double T = 1.0;
    double* random_increments = (double*)malloc(STOCKS * (STEPS-1) * sizeof(double));
    double* S = (double*)malloc(STOCKS * sizeof(double));
    uint64_t total_cycles = 0;
    uint64_t min_cycles = UINT64_MAX;
    uint64_t max_cycles = 0;

    // Get timebase info for conversion
    mach_timebase_info_data_t timebase;
    mach_timebase_info(&timebase);
    double ns_per_cycle = ((double)timebase.numer / timebase.denom);

    // Read input data
    fp = fopen("in.dat", "r");
    for (int i = 0; i < STOCKS * (STEPS-1); i++) {
        fscanf(fp, "%lf", &random_increments[i]);
    }
    fclose(fp);

    // // Warm up the CPU and caches
    // for (int i = 0; i < 10; i++) {
    //     GBM(S, S0, r, sigma, T, random_increments);
    // }

    // Benchmark runs
    printf("Running benchmark for %d iterations...\n", NUM_RUNS);
    for (int run = 0; run < NUM_RUNS; run++) {
        uint64_t start = mach_absolute_time();
        GBM(S, S0, r, sigma, T, random_increments);
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
    return retval;
}
