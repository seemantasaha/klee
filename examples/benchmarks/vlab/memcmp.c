#include "klee/klee.h"

#include <stddef.h>

int
memcmp2 (char* s1, char* s2, int count)
{

  while (count-- > 0) {
      if (*s1++ != *s2++)
	  	return s1[-1] < s2[-1] ? -1 : 1;
  }
  return 0;
}


int main(){
	//int len;
	//klee_make_symbolic(&len, sizeof(len), "len");
	//klee_assume(len >= 0);
	//klee_assume(len < 4);
	char dest[16];
  	char src[16];

  	klee_make_symbolic(dest, sizeof dest, "dest");
  	klee_make_symbolic(src, sizeof src, "src");
	
	memcmp2(dest, src, 16);

	return 0;
}