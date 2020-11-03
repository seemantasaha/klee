#include "klee/klee.h"

unsigned int mix_copy(unsigned int x) {
	unsigned int y = ((x >> 4) ^ x) & 0xff;
	unsigned int output = y | (y << 4);
	
	for(int k = 0; k < output; k++)
		;

	return output;
}


int main() {
  int a;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_assume(a >= 0);
  klee_assume(a < 256);
  return mix_copy(a);
} 
 