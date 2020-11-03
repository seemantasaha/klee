#include "klee/klee.h"
#include <stdio.h>
#include <time.h>


void delay(int number_of_miliseconds) {
	clock_t start_time = clock();

	while(clock() < start_time + number_of_miliseconds*1000)
		;
}

unsigned char GetCRC8(unsigned char check , unsigned char ch)
{
	int i , sft = 1;
	for ( i = 0 ; i <  8; i ++ ) {
		if ( check & 0x80 ) {
			check <<= 1;
			if ( ch & 0x80 ) { check = check | 0x01; }
			else { check = check & 0xfe ; }
			check = check ^ 0x85 ;
		} else {
			check <<=1;
			if ( ch & 0x80 ) { check = check | 0x01;}
			else { check = check & 0xfe ; } 
		}
		ch <<= 1;
	}
	check >>= sft;

	for (int k=0; k<check; k++)
		;

	return check;
}

int main(){
	unsigned char check;
	unsigned char ch = '0';
  	// Make the input symbolic.
  	klee_make_symbolic(&check, sizeof(check), "check");
  	//klee_make_symbolic(&ch, sizeof(ch), "ch");
	return GetCRC8(check, ch);
	// for (int i = 0; i < 256; ++i)
	// {
	// 	check = i +'0';
	// 	ch = '0';
	// 	unsigned char res = GetCRC8(check, ch);
	// 	printf("%u\n", res);
	// }
}