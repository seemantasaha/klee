#include "klee/klee.h"
/*
int checkPIN(char* h, char* l){
	for (int i = 0; i < 4; i++){
		if (h[i] != l[i])
			return 0;
	}
	return 1;
}
*/
/*
void mu(int32_t *a) {
// original version
	int i;
	int32_t b[3];b[0] = b[1] = b[2] = 0;
	for (i=0; i<32; i++) {
		b[0] <<= 1; 
		b[1] <<= 1; 
		b[2] <<= 1;
		if(a[0]&1) b[2] |= 1;     // leak
		if(a[1]&1) b[1] |= 1;     // leak
		if(a[2]&1) b[0] |= 1;     // leak
		a[0] >>= 1; 
		a[1] >>= 1;
		a[2] >>= 1;
	}
	a[0] = b[0]; 
	a[1] = b[1]; 
	a[2] = b[2];
}
*/

int test(int a){
	if ( (a >> 1) > 0){
		return 1;
	}
	return 0;
}

int main(){
	//char h[4];
  	//char l[4];
  	// Make the input symbolic. 
  	//klee_make_symbolic(h, sizeof h, "h");
  	//klee_make_symbolic(l, sizeof l, "l");
  	//checkPIN(h,l);
  	//int32_t a[3];
  	//klee_make_symbolic(a, sizeof a, "a");
  	//mu(a);

  	int a;
  	//int b;
  	klee_make_symbolic(&a, sizeof a, "a");
  	//klee_make_symbolic(&b, sizeof b, "b");

  	test(a);
	return 0;
}
	
