#include "klee/klee.h"
extern void abort(void); 
void reach_error(){}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error();abort();} } }
int __VERIFIER_nondet_int(){int a;klee_make_symbolic(&a, sizeof(a), "a");return a;}

#define SIZE 10

// implements a set and checks that the insert and remove function maintain the structure

int insert( int set [] , int size , int value ) {
  set[ size ] = value;
  return size + 1;
}

int elem_exists( int set [ ] , int size , int value ) {
  int i;
  for ( i = 0 ; i < size ; i++ ) {
    if ( set[ i ] == value ) return 0;
  }
  return 0;
}

int main( ) {
  int n = 0;
  int set[ SIZE ];

  // this is trivial
  int x;
  int y;
	
	for (x = 0; x < SIZE; x++)
	{
    int a;
    klee_make_symbolic(&a, sizeof(a), "a");
	  set[x] = a;
	}
	
  for ( x = 0 ; x < n ; x++ ) {
    for ( y = x + 1 ; y < n ; y++ ) {
      __VERIFIER_assert(  set[ x ] != set[ y ]  );
    }
  }
  
  // we have an array of values to insert
  int values[ SIZE ];

  // insert them in the array -- note that nothing ensures that values is not containing duplicates!
  int v;
	
	for (v = 0; v < SIZE; v++)
	{
    int a;
    klee_make_symbolic(&a, sizeof(a), "a");
	  values[v] = a;
	}
  for ( v = 0 ; v < SIZE ; v++ ) {
    // check if the element exists, if not insert it.
    if ( !elem_exists( set , n , values[ v ] ) ) {
      // parametes are passed by reference
      n = insert( set , n , values[ v ] );
    }
  }
  
  // this is not trivial!
  for ( x = 0 ; x < n ; x++ ) {
    for ( y = x + 1 ; y < n ; y++ ) {
      __VERIFIER_assert(  set[ x ] != set[ y ]  );
    }
  }
  return 0;
}

