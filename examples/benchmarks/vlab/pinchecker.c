#include "klee/klee.h"

int checkPIN(char* h, char* l){
	for (int i = 0; i < 32; i++){
		//klee_assume(h[i] >= 0); klee_assume(h[i] <= 64);
		//klee_assume(l[i] >= 0); klee_assume(l[i] <= 64);
		if (h[i] != l[i])
			return 0;
	}
	return 1;
}

int main(){
	char h[32];
  	char l[32];
  	// Make the input symbolic.
  	klee_make_symbolic(h, sizeof h, "h");
  	klee_make_symbolic(l, sizeof l, "l");
	return checkPIN(h, l);
}
