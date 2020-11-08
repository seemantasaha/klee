#include "klee/klee.h"

int minimum(int num1, int num2) 
{
    return (num1 > num2) ? num2 : num1;
}

char* retrieve(char* username) {
    char* pw = "leet";
    return pw;
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

int login_unsafe(char* guess, char* username) {
    char* real_password = retrieve(username);

    // if(real_password == null) {
    //     return false;
    // }

    for(int i = 0; i < size(guess); i++) {
        if (i < size(real_password)) {
            if(guess[i] != real_password[i]) {
                return 0;
            }
        } else {
            return 0;
        }
    }

    return 1;
}

int main() {
  	char h[4];
	char l[4];
	// Make the input symbolic.
	klee_make_symbolic(h, sizeof h, "h");
	klee_make_symbolic(l, sizeof l, "l");

  	return login_unsafe(h,l);
} 
