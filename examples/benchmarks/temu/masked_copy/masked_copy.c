#include "klee/klee.h"

int copy (int i) {

	int v = i;

	for (int k = 0; k < v; k++)
		;

	return v;
}


int main() {
  int a;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_assume(a >= 0);
  klee_assume(a < 256);
  return copy(a);
} 
 