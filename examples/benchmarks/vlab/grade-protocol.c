#include "klee/klee.h"

int grade_protocol (unsigned int r1, unsigned int r2) {
	size_t S = 5, G = 5, i = 0, j = 0;
	size_t n = ((G - 1) * S) + 1 , sum = 0;
	size_t numbers [S], announcements [S], h[S];
	
	for (i = 0; i < S; i++) 
		h[i] = r1 % G;
	
	for (i = 0; i < S; i++)
		numbers [i] = r2 % n;
	
	while (i < S) {
		j = 0;
		while (j < G) {
			if (h[i] == j)
				announcements[i] = (j + numbers[i] - numbers[(i + 1) % S]) % n;
			j = j + 1;
		}
		i = i + 1;
	}
	
	for ( i = 0; i < S; i ++)
		sum += announcements[i];
	
	return sum % n;
}


int main() {
  unsigned int a, b;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");
  return grade_protocol(a, b);
} 