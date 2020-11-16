#include "klee/klee.h"

int check_unbound(unsigned char x){
	int c;
	if(x >=0 && x < 256) {
		for(c = 0; c < 10; c++);
		if(x >=16 && x < 240) {
			for(c = 0; c < 10; c++);
			if(x >=32 && x < 224) {
				for(c = 0; c < 10; c++);
				if(x >=48 && x < 208) {
					for(c = 0; c < 10; c++);
					if(x >=64 && x < 192) {
						for(c = 0; c < 10; c++);
						if(x >=80 && x < 176) {
							for(c = 0; c < 10; c++);
							if(x >=96 && x < 160) {
								for(c = 0; c < 10; c++);
								if(x >=112 && x < 144) {
									for(c = 0; c < 10; c++);
								}
							}
						}
					}
				}
			}
		}
	}
	return 0;
}

int main(){
	unsigned char x;
  	klee_make_symbolic(&x, sizeof x, "x");
	return check_unbound(x);
}
