#include "klee/klee.h"

#include <stdio.h>
#include <string.h>

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

// Function to implement strcmp function
int strcmp2(const char *X, const char *Y)
{
    while(*X)
    {
        // if characters differ or end of second string is reached
        if (*X != *Y)
            break;

        // move to next pair of characters
        X++;
        Y++;
    }

    // return the ASCII difference after converting char* to unsigned char*
    return *(const unsigned char*)X - *(const unsigned char*)Y;
}

char* itoa(int val){
    
    static char buf[32] = {0};
    
    int i = 30;
    
    for(; val && i ; --i, val /= 10)
    
        buf[i] = "0123456789abcdef"[val % 10];
    
    return &buf[i+1];
    
}

char* md5(char* s) {
    int lim = 100 * size(s);

    int k = 0;

    for (int i = 0; i < lim; i++) {
        if (k % 3 == 0) {
            k--;
        } else {
            k++;
        }
    }

    return itoa(k);
}

int login_unsafe(char* u, char* p) {
    int outcome = 0;
    
    if (strcmp2("user", u)) {
        if (strcmp2("pass", md5(p)) == 0) {
            outcome = 1;
        }
    }

    return outcome;
}

int main() {
  	char h[4];
	char l[4];
	// Make the input symbolic.
	klee_make_symbolic(h, sizeof h, "h");
	klee_make_symbolic(l, sizeof l, "l");

    return login_unsafe(h,l);
} 
