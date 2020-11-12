#include "klee/klee.h"

int min(int x, int y, int z) 
{ 
    if (x <= y && x <= z) 
        return x; 
    if (y <= x && y <= z) 
        return y; 
    else
        return z; 
} 
  
int editDist(char* str1, char* str2, int m, int n) 
{ 
    // If first string is empty, the only option is to 
    // insert all characters of second string into first 
    if (m == 0) 
        return n; 

    // If second string is empty, the only option is to 
    // remove all characters of first string 
    if (n == 0) 
        return m; 

    // If last characters of two strings are same, nothing 
    // much to do. Ignore last characters and get count for 
    // remaining strings. 
    if (str1[m - 1] == str2[n - 1]) 
        return editDist(str1, str2, m - 1, n - 1); 

    // If last characters are not same, consider all three 
    // operations on last character of first string, recursively 
    // compute minimum cost for all three operations and take 
    // minimum of three values. 
    return 1 + min(editDist(str1, str2, m, n - 1), // Insert 
                   editDist(str1, str2, m - 1, n), // Remove 
                   editDist(str1, str2, m - 1, n - 1) // Replace 
                   ); 
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

	   return editDist(str1, str2, 4, 4);
}
