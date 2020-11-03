#include "klee/klee.h"

int checked_copy (unsigned int i) {

	int base = 8;

	int v;

	if (i < 16)
		v = base + i;
	else
		v = base;

	for(int k = 0; k < v; k++)
		;

	return v;
}


int main() {
  unsigned int a;
  klee_make_symbolic(&a, sizeof(a), "a");
  return checked_copy(a);
} 
 