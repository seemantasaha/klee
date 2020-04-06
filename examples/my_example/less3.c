#include "klee/klee.h"
int lessThanThree(short x) {
	if (x < 3) {
		return 1;
	} else {
		return 0;
	}
}

int main(){
	short a;
	klee_make_symbolic(&a, sizeof(a), "a");
	lessThanThree(a);
	return 0;
}
	
