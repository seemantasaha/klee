#include "klee/klee.h"

int dining_crypto (unsigned char r1, unsigned char r2) {
	size_t N = 5, output = 0, i = 0;
	size_t coin[N], obscoin [2], decl [N];
	size_t h;

	h = r1 % (N+1);
	
	for ( i = 0; i < N; i++) {
		coin [i] = r2 % 2;
	}

	for ( i = 0; i < N; i++) {
		decl [ i ] = coin[ i ] ^ coin [(i+1) % N];
		if (h == i+1) {
			decl [ i ] = ! decl [ i ];
		}
		i = i+1;
	}

	for ( i = 0; i < N; i++) {
		output = output + decl[i];
	} 
	return output ;
}


int main() {
  	unsigned char r1;
	unsigned char r2;
  	klee_make_symbolic(&r1, sizeof(r1), "r1");
  	klee_make_symbolic(&r2, sizeof(r2), "r2");
  	
  	return dining_crypto(r1, r2);
} 