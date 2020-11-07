#include "klee/klee.h"
#include <stdio.h>
#include <math.h>

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

int modular_exponentiation_unsafe(int y, int x, int n) {
    int s = 1;
    int w = bitLength(x);
    int r = 0;
    for(int k = 0; k < w; k++) {
        if(x & (1 << k)) {
            r = (s*y) % n;
        } else {
            r = s;
        }
        s = (r*r) % n;
    }
    return r;
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
  	return modular_exponentiation_unsafe(a,b,c);
    // int res = modular_exponentiation_inline_unsafe(2,5,13);
    // printf("%d", res);
} 
