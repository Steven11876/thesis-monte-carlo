#ifndef TEST_H
#define TEST_H

#define STEPS 50
#define STOCKS 100

void SABR(double S[STOCKS], double S0, double r, double sigma_init, double alpha, double beta, double rho, double T, double random_increments[2*STOCKS * (STEPS-1)]);

#endif
