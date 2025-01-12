#include <assert.h>
#include <stdlib.h>  // For malloc and free
#include <math.h>    // For sqrt
#include <stdio.h>   // For printf
#include <time.h>    // For clock_gettime
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

// Function to get time difference in nanoseconds
long long diff_in_ns(struct timespec start, struct timespec end) {
    struct timespec temp;
    if ((end.tv_nsec - start.tv_nsec) < 0) {
        temp.tv_sec = end.tv_sec - start.tv_sec - 1;
        temp.tv_nsec = 1000000000 + end.tv_nsec - start.tv_nsec;
    } else {
        temp.tv_sec = end.tv_sec - start.tv_sec;
        temp.tv_nsec = end.tv_nsec - start.tv_nsec;
    }
    return (temp.tv_sec * 1000000000) + temp.tv_nsec;
}

int main() {
    FILE *fp; 
    double S0 = 100.0;
    double r = 0.05;
    double sigma = 0.2;
    double T = 1.0;
    double* random_increments = (double*)malloc(STOCKS * (STEPS-1) * sizeof(double));
    double* S = (double*)malloc(STOCKS * sizeof(double));
    struct timespec start, end;
    long long total_ns = 0;
    long long min_ns = LLONG_MAX;
    long long max_ns = 0;

    // Read input data
    fp = fopen("in.dat", "r");
    for (int i = 0; i < STOCKS * (STEPS-1); i++) {
        fscanf(fp, "%lf", &random_increments[i]);
    }
    fclose(fp);

    // Warm up the CPU and caches
    for (int i = 0; i < 10; i++) {
        GBM(S, S0, r, sigma, T, random_increments);
    }

    // Benchmark runs
    printf("Running benchmark for %d iterations...\n", NUM_RUNS);
    for (int run = 0; run < NUM_RUNS; run++) {
        clock_gettime(CLOCK_MONOTONIC, &start);
        GBM(S, S0, r, sigma, T, random_increments);
        clock_gettime(CLOCK_MONOTONIC, &end);
        
        long long ns = diff_in_ns(start, end);
        total_ns += ns;
        if (ns < min_ns) min_ns = ns;
        if (ns > max_ns) max_ns = ns;
    }

    // Print benchmark results
    printf("\nBenchmark Results:\n");
    printf("Average time: %.2f ns (%.2f cycles @ 3GHz)\n", 
           (double)total_ns / NUM_RUNS, 
           ((double)total_ns / NUM_RUNS) * 3.0); // Assuming 3GHz CPU
    printf("Min time: %.2f ns (%.2f cycles @ 3GHz)\n", 
           (double)min_ns,
           (double)min_ns * 3.0);
    printf("Max time: %.2f ns (%.2f cycles @ 3GHz)\n", 
           (double)max_ns,
           (double)max_ns * 3.0);

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
