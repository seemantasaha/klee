#include "klee/klee.h"

int notaint_unsafe(int sec) {
	if(sec > 0) {
	    int i=0; 
	    while (i < sec) 
	    	i++;
	}
	return 1;
}

int main() {
  int a;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_assume(a >= 0);
  klee_assume(a < 256);
  return notaint_unsafe(a);
} 
 