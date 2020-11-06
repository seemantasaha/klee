#include "klee/klee.h"
#include <stdio.h>
#include <math.h>

int bitLength(int b) {
    if(b == 0) return 0;
    else if(b == 1) return 1;
    else if(b >= 2 && b <= 3) return 2;
    else if(b >= 4 && b <= 7) return 3;
    else if(b >= 8 && b <= 15) return 4;
    else return 5;
} 

int modular_exponentiation_inline_unsafe(int a, int b, int c) {
    //printf("%d %d %d\n", a, b, c);
    int m = 1;
    int n = bitLength(b);
    //printf("n = %d\n", n);
    int t;
    for(int i = 0; i < n; i++) {
        //starting of the inlining
        int p1;
        if(m & (1 << 0)) {
            p1 = m;
        } else {
            p1 = 0;
        }
        //printf("m = %d\n", m);
        int n1 = bitLength(m);
        //printf("n1 = %d\n", n1);
        for(int j = 1; j < n1; j++) {
            if(m & (1 << 0)) {
                c = c + m;
                //printf("c=%d\n", c);
                modular_exponentiation_inline_unsafe(a, b, c);
            }
        }

        t = (m * a) % c;

        if(b & (1 << i))  {
            m = t;
        }
    }
    return a;
}


int main() {
  	int a, b, c;
	// Make the input symbolic.
	klee_make_symbolic(&a, sizeof a, "a");
    klee_assume(a >= 0); klee_assume(a < 16);
    klee_make_symbolic(&b, sizeof b, "b");
    klee_assume(b >= 0); klee_assume(b < 16);
    klee_make_symbolic(&c, sizeof c, "c");
    klee_assume(c >= 0); klee_assume(c < 4);
  	return modular_exponentiation_inline_unsafe(a,b,c);
    // int res = modular_exponentiation_inline_unsafe(2,5,13);
    // printf("%d", res);
} 
