#include "klee/klee.h"

int implicit (unsigned int input ) {

	int output = 0;

	if ( input == 0) output = 0;
	else if ( input == 1) output = 1;
	else if ( input == 2) output = 2;
	else if ( input == 3) output = 3;
	else if ( input == 4) output = 4;
	else if ( input == 5) output = 5;
	else if ( input == 6) output = 6;
	else output = 0;

	// int output;

	// int k, m = 1;
	
	// for(k=0; k < 4; k++) {
	// 	if(input & (1<<k))
	// 		output += 1 * m;
	// 	m *= 2; 
	// }

	for(int k = 0; k < output; k++)
		;

	return output;
}

int main() {
  unsigned int a;
  klee_make_symbolic(&a, sizeof(a), "a");
  return implicit(a);
} 