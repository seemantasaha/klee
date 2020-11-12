#include "klee/klee.h"

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

int pwcheck1_unsafe(char* guess, char* pw) {

    int len_guess = sizeof(guess)/sizeof(char);
    int len_pw = sizeof(pw)/sizeof(char);

    if(len_guess != len_pw) {
      return 0;
    }

    int i;

    for(i = 0; i < len_guess; i++) {
      if(guess[i] != pw[i]) {
        return 0;
      }
    }

    return 1;
}

int main(){
  char h[4];
  char l[4];
  // Make the input symbolic.
  klee_make_symbolic(h, sizeof h, "h");
  klee_make_symbolic(l, sizeof l, "l");
  return pwcheck1_unsafe(h, l);
}
