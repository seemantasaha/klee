#include "klee/klee.h"

int copy (int i) {

	int base = 2;

	if (i < 4)
		i = base + i;
	else
		i = base;

	int v;

	int k, m = 1;
	
	for(k=0; k < 4; k++) {
		if(i & (1<<k))
			v += 1 * m;
		m *= 2; 
	}

	return v;
}


int main() {
  int a;
  klee_make_symbolic(&a, sizeof(a), "a");
  return copy(a);
} 
 