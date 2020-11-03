#include "klee/klee.h"

int checkPIN(char* h, char* l){
	for (int i = 0; i < 4; i++){
		if (h[i] != l[i])
			return 0;
	}
	return 1;
}

int main(){
	char h[4];
  	char l[4];
  	// Make the input symbolic.
  	klee_make_symbolic(h, sizeof h, "h");
  	klee_make_symbolic(l, sizeof l, "l");
	return checkPIN(h, l);
}
