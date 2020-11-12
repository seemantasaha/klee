#include "klee/klee.h"

int minimum(int num1, int num2) 
{
    return (num1 > num2) ? num2 : num1;
}

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

int passwordsEqual_unsafe(char* a, char* b) {
    int equal = 1;
    int shmequal = 1;
    int aLen = sizeof(a)/sizeof(char);
    int bLen = sizeof(b)/sizeof(char);
    if (aLen != bLen) {
        equal = 0;
    }
    int min = minimum(aLen, bLen);
    for (int i = 0; i < min; i++) {
        if (a[i] != b[i]) {
    		return 0;
        } else {
            shmequal = 1;
        }
    }
    return equal;
}


int main() {
  	char h[4];
	char l[4];
	// Make the input symbolic.
	klee_make_symbolic(h, sizeof h, "h");
	klee_make_symbolic(l, sizeof l, "l");
  	return passwordsEqual_unsafe(h,l);
} 
