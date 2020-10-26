#include "klee/klee.h"
#define N 4

int search(int hashtable[], unsigned int val){
    int hash = val % N;
    int temp = hash;
    while (hashtable[temp] >= 0 && hashtable[temp] % N == hash){
        if (hashtable[temp] == val) return temp;
        temp = (temp + 1) % N;
        if (temp == hash) break;
    }
    return -1;
}
int main(){
    int hashtable[N];
    klee_make_symbolic(hashtable, sizeof hashtable, "hashtable");
    unsigned int val;
    klee_make_symbolic(&val, sizeof val, "val");
    search(hashtable, val);
}