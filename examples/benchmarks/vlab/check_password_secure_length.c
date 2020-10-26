#include "klee/klee.h"

int checkPIN(char* h, char* l){
	int flag = 1;
	for (int i = 0; i < 8; i++){
		if (h[i] != l[i])
			flag = flag & 0;
		else
			flag = flag & 1;
	}
	return flag;
}

int main(){
	char h[8];
  	char l[8];
  	// Make the input symbolic.
  	klee_make_symbolic(h, sizeof h, "h");
  	klee_make_symbolic(l, sizeof l, "l");
	return checkPIN(h, l);
}
