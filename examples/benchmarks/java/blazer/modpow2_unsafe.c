#include "klee/klee.h"
#include <stdio.h>
#include <math.h>
#include <stdlib.h>

int max(int num1, int num2) 
{
    return (num1 < num2) ? num2 : num1;
}

int bitLength(int b) {
    if(b == 0) return 0;
    else if(b == 1) return 1;
    else if(b >= 2 && b <= 3) return 2;
    else if(b >= 4 && b <= 7) return 3;
    else if(b >= 8 && b <= 15) return 4;
    else if(b >= 16 && b <= 31) return 5;
    else if(b >= 32 && b <= 63) return 6;
    else if(b >= 64 && b <= 127) return 7;
    else if(b >= 128 && b <= 255) return 8;
    else return 9;
} 

//fastMultiply method: replace standardMuliply call with int libarary implementation of multiply
int fastMultiply_1(int x, int y) {
        int xLen = bitLength(x);
        int yLen = bitLength(y);
        if (x == 1) {
            return y;
        }
        if (y == 1) {
            return x;
        }
        int ret = 0;
        int N = max(xLen, yLen);
        int conditionObj0 = 800;
        int conditionObj1 = 32;
        if (N <= conditionObj0) {
            ret = x * y;
        } else if (abs(xLen - yLen) >= conditionObj1) {
            //ret = standardMultiply(x, y);
            ret = x * y;
        } else {
            //Number of bits/2 rounding up
            N = (N / 2) + (N % 2);
            // x = a + 2^N*b, y = c + 2^N*d
            int b = x >> N;
            int a = x - (b << N);
            int d = y >> N;
            int c = y - (d << N);
            // Compute intermediate values
            int ac = fastMultiply_1(a, c);
            int bd = fastMultiply_1(b, d);
            int crossterms = fastMultiply_1(a + b, c + d);
            ret = (ac + ((crossterms - ac - bd) << N)) + (bd << (2 * N));
        }
        return ret;
    }

int modPow2_unsafe(int base, int exponent, int modulus) {
    int r0 = 1;
    int r1 = base;
    int width = bitLength(exponent);
    for (int i = 0; i < width; i++) {
        if(!(exponent & (1 << (width - i - 1)))) {
            //r1 = OptimizedMultiplier.fastMultiply(r0, r1).mod(modulus);
            int x = r0;
            int y = r1;
            int xLen = bitLength(x);
            int yLen = bitLength(y);
            if (x == 1) {
                return y;
            }
            if (y == 1) {
                return x;
            }
            int ret = 0;
            int N = max(xLen, yLen);
            int conditionObj0 = 800;
            int conditionObj1 = 32;
            if (N <= conditionObj0) {
                ret = x * y;
            } else if (abs(xLen - yLen) >= conditionObj1) {
                ret = 0;
                for (int j = 0; j < bitLength(y); j++) {
                    if(y & (1 << j)) {
                        ret = ret + (x << j);
                    }
                }
            } else {
                //Number of bits/2 rounding up
                N = (N / 2) + (N % 2);
                // x = a + 2^N*b, y = c + 2^N*d
                int b = x >> N;
                int a = x - (b << N);
                int d = y >> N;
                int c = y - (d << N);
                // Compute intermediate values
                int ac = fastMultiply_1(a, c);
                int bd = fastMultiply_1(b, d);
                
                int crossterms = fastMultiply_1(a + b, c + d);
                ret = (ac + ((crossterms - ac - bd) << N)) + (bd << (2 * N));
            }
            r1 = ret % modulus;
            r0 = (r0 * r0) % modulus;
        } else {
            //r0 = OptimizedMultiplier.fastMultiply(r0, r1).mod(modulus);
            int x = r0;
            int y = r1;
            int xLen = bitLength(x);
            int yLen = bitLength(y);
            if (x == 1) {
                return y;
            }
            if (y == 1) {
                return x;
            }
            int ret = 0;
            int N = max(xLen, yLen);
            int conditionObj0 = 800;
            int conditionObj1 = 32;
            if (N <= conditionObj0) {
                ret = x * y;
            } else if (abs(xLen - yLen) >= conditionObj1) {
                ret = 0;
                for (int j = 0; j < bitLength(y); j++) {
                    if(y & (1 << j)) {
                        ret = ret + (x << j);
                    }
                }
            } else {
                //Number of bits/2 rounding up
                int b = x >> N;
                int a = x - (b << N);
                int d = y >> N;
                int c = y - (d << N);
                // Compute intermediate values
                int ac = fastMultiply_1(a, c);
                int bd = fastMultiply_1(b, d);
                
                int crossterms = fastMultiply_1(a + b, c + d);
                ret = (ac + ((crossterms - ac - bd) << N)) + (bd << (2 * N));
            }
            r0 = ret % modulus;
            r1 = (r1 * r1) % modulus;
        }
    }
    return r0;
}


int main() {
  	int a, b, c;
	// Make the input symbolic.
	klee_make_symbolic(&a, sizeof a, "a");
    klee_assume(a >= 0); klee_assume(a < 256);
    klee_make_symbolic(&b, sizeof b, "b");
    klee_assume(b >= 0); klee_assume(b < 256);
    klee_make_symbolic(&c, sizeof c, "c");
    klee_assume(c >= 0); klee_assume(c < 256);
  	return modPow2_unsafe(a,b,c);
    // int res = modular_exponentiation_inline_unsafe(2,5,13);
    // printf("%d", res);
} 
