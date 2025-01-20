#ifndef FIXED_POINT_H
#define FIXED_POINT_H

#define FIXED_POINT_FACTOR 100000
#define FIXED_POINT_BITS 17  // log2(100000) ≈ 16.61 -> 17 bits needed

// Convert double to fixed point
#define DOUBLE_TO_FIXED(x) ((int)((x) * FIXED_POINT_FACTOR))

// Convert fixed point to double
#define FIXED_TO_DOUBLE(x) ((double)(x) / FIXED_POINT_FACTOR)

// Fixed point multiplication
#define FIXED_MUL(a, b) ((int)(((long long)(a) * (long long)(b)) / FIXED_POINT_FACTOR))

// Fixed point division
#define FIXED_DIV(a, b) ((int)(((long long)(a) * FIXED_POINT_FACTOR) / (b)))

// Function declarations
int fixed_exp(int x);
int fixed_sqrt(int x);

#endif // FIXED_POINT_H
