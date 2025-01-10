#ifndef TEST_H
#define TEST_H

#define STEPS 50
#define STOCKS 100

void GBM(double S[STOCKS], double S0, double r, double sigma, double T, double random_increments[STOCKS * (STEPS-1)] );

#endif
