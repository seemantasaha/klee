#include "klee/klee.h"

int sanity_unsafe(int a, int b) {
	int i = b;
	int j = b;
	if (b<0) return 0;

	if (a<0) {
	    return 1;
	} else {
	    while (i > 0) {
			i--;
	    }
	}
    return 0;
}

int main() {
  int a, b;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");
  klee_assume(a >= 0);
  klee_assume(a < 256);
  klee_assume(b >= 0);
  klee_assume(b < 256);
  return sanity_unsafe(a,b);
} 
