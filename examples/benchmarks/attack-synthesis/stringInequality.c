#include "klee/klee.h"

#include<stdio.h>

int stringInequality(char* v1, char* v2) {   
  
  if (v1[0] > v2[0]){
    //printf("greater\n");
    for(int i = 0; i < 100; i++){}
    return 0;
  } else {
    //printf("smaller\n");
    for(int i = 0; i < 1; i++){}
    return 1;
  }
}  

int main(){
	  char str1[1];
  	char str2[1];
  	//int so, sc, to, tc, fi;
  	// Make the input symbolic.
  	klee_make_symbolic(str1, sizeof str1, "str1");
  	klee_make_symbolic(str2, sizeof str2, "str2");
  	//klee_make_symbolic(&so, sizeof so, "so");
  	//klee_make_symbolic(&sc, sizeof sc, "sc");
  	//klee_make_symbolic(&to, sizeof to, "to");
  	//klee_make_symbolic(&tc, sizeof tc, "tc");
  	//klee_make_symbolic(&fi, sizeof fi, "fi");

  	//klee_assume(so >= 0 && so < 8);
  	//klee_assume(sc >= 0 && sc < 8);
  	//klee_assume(to >= 0 && to < 8);
  	//klee_assume(tc >= 0 && tc < 8);
  	//klee_assume(fi >= 0 && fi < 8);

	  return stringInequality(str1, str2);

    //stringInequality("abcd", "wxyz");
    //stringInequality("zywv", "wxyz");
}
