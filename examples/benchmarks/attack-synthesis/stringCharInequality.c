#include "klee/klee.h"

#include<stdio.h>

int stringInequality(char* v1, char* v2) { 

  for (int i = 0; i < 4; i++) {   
    if (v1[i] > v2[i]){
      return 1;
    } else {
      if(v1[i] < v2[i]) {
        return -1;
      }
    }
  }
  return 0;
}  

int main(){
	  char str1[4];
  	char str2[4];
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

    // printf("%d", stringInequality("abcd", "wxyz"));
    // printf("%d", stringInequality("zywv", "wxyz"));
    // printf("%d", stringInequality("abcd", "abce"));
    // printf("%d", stringInequality("xbcd", "abcd"));
    // printf("%d", stringInequality("abcd", "abcd"));
}
