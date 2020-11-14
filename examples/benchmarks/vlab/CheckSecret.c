#include "klee/klee.h"

int secret = 1000;

int checkSecret(int guess, char t[], int size){
	return recur(guess, t, size - 1);
}

int recur(int guess, char t[], int index){
	if(index == 0 && t[index] == 1){
		if(guess <= secret){
			for(int c=0; c<10;c++);
		}
		return guess == secret;
	} else if(t[index] == 1){
		return recur(guess, t, index -1);
	}
	
	if(guess <= secret){
		for(int c=0; c<10;c++);
	}
	
	return guess == secret;
}

int main(){
	int guess;
	klee_make_symbolic(&guess, sizeof guess, "guess");
	char t[12];
	klee_make_symbolic(t, sizeof t, "t");
	for (int i = 0; i < 12; i++){
		klee_assume(t[i] >= 0); klee_assume(t[i] <= 1);;
	}
	checkSecret(guess, t, 12);
}