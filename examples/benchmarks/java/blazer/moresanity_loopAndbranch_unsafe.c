#include "klee/klee.h"

int moresanity_loopAndbranch_unsafe(int a, int taint) {
    int i = a;

    if(taint < 0) {
      while(i > 0) {
        i--;
      }

    } else {
      taint = taint - 10;

      if(taint >= 10) {
        int j = a;
        while(j>0) {
          j--;
        }
      } else {
            if(a<0) {
              int k = a; while (k>0) k--;
            }
      }
    }

    return 1;
  }

int main() {
  int b;
  klee_make_symbolic(&b, sizeof(b), "b");
  return moresanity_loopAndbranch_unsafe(10,b);
} 
