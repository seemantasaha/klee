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

//fastMultiply method: replace standardMuliply call with BigInteger libarary implementation of multiply
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
    if (N <= 800) {
        ret = x * y;
    } else if (abs(xLen - yLen) >= 32) {
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

int modPow1_unsafe(int base, int exponent, int modulus) {
    int s = 1;
    int width = bitLength(exponent);
    for (int i = 0; i < width; i++) {
        s = (s*s) % modulus;
        if(exponent & (1 << (width - i - 1))) {
            int x = s;
            int y = base;
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
            if (N <= 800) {
                ret = x*y;
            } else if (abs(xLen - yLen) >= 32) {
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
            s = ret % modulus;
            //s = fastMultiply(s, base).mod(modulus);
        }
    }
    return s;
}


int main() {
  	int a, b, c;
	// Make the input symbolic.
	klee_make_symbolic(&a, sizeof a, "a");
    klee_assume(a >= 0); klee_assume(a < 16);
    klee_make_symbolic(&b, sizeof b, "b");
    klee_assume(b >= 0); klee_assume(b < 16);
    klee_make_symbolic(&c, sizeof c, "c");
    klee_assume(c >= 0); klee_assume(c < 16);
  	return modPow1_unsafe(a,b,c);
    // int res = modular_exponentiation_inline_unsafe(2,5,13);
    // printf("%d", res);
} 
