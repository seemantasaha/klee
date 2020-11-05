#include "klee/klee.h"

int moresanity_array_unsafe(int a[], int taint) {
    int t;
    if(taint<0) {
	    int i = 3;
	    while(i >= 0) {
	        t = a[i];
	        i--;
	    }
    } else {
	    int i = 0;
        t = a[i];
        i = 4;
    }
    return 0;
}

int main() {
  int a[4], b;
  klee_make_symbolic(a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");
  return moresanity_array_unsafe(a,b);
} 
