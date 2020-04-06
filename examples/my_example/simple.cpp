#include <string>
#include "klee/klee.h"

int foo(std::string s){
	if (s == "hello world"){
		return 1;
	}
	return 0;
}

int main(){
	std::string s;
	klee_make_symbolic(&s, sizeof(s), "s");
	return foo(s);
}
