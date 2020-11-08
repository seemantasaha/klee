#include "klee/klee.h"

//#include <string.h>

int size(char *ptr)
{
    //variable used to access the subsequent array elements.
    int offset = 0;
    //variable that counts the number of elements in your array
    int count = 0;

    //While loop that tests whether the end of the array has been reached
    while (*(ptr + offset) != '\0')
    {
        //increment the count variable
        ++count;
        //advance to the next element of the array
        ++offset;
    }
    //return the size of the array
    return count;
}

int pwcheck2_unsafe(char* guess, char* pw) {

  if(size(guess) != size(pw)) {
      return 0;
  }

  int i;
  int unused;
  int matches = 1;
  for(i = 0; i < size(guess); i++) {
      if (i < size(pw)) {
        if(guess[i] != pw[i]) {
          matches = 0;
        } else {
          unused = 1;
        }
      } else {
        unused = 0;
        unused = 1;
      }
  }
  return matches;
}


int main(){
  // int i;
  // klee_make_symbolic(&i, sizeof i, "i");
  // klee_assume(i >= 0);
  // klee_assume(i < 16);
  char h[4];
  char l[4];
  // Make the input symbolic.
  klee_make_symbolic(h, sizeof h, "h");
  klee_make_symbolic(l, sizeof l, "l");
  return pwcheck2_unsafe(h, l);
}
