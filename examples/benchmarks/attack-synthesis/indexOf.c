#include "klee/klee.h"

int indexOf(char* source, int sourceOffset, int sourceCount, char* target, int targetOffset, int targetCount, int fromIndex) {
        if (fromIndex >= sourceCount) {
            return (targetCount == 0 ? sourceCount : -1);
        }
        if (fromIndex < 0) {
            fromIndex = 0;
        }
        if (targetCount == 0) {
            return fromIndex;
        }
        char first = target[targetOffset];
        int max = sourceOffset + (sourceCount - targetCount);
        for (int i = sourceOffset + fromIndex; i <= max; i++) {
            /* Look for first character. */
            if (source[i] != first) {
                while (++i <= max && source[i] != first);
            }
            /* Found first character, now look at the rest of v2 */
            if (i <= max) {
                int j = i + 1;
                int end = j + targetCount - 1;
                for (int k = targetOffset + 1; j < end && source[j] == target[k]; j++, k++);
	            if (j == end) {
                    /* Found whole string. */
                    return i - sourceOffset;
                }
            }
        }
        return -1;
    }

int main(){
	char source[8];
  	char target[1];
  	//int so, sc, to, tc, fi;
  	// Make the input symbolic.
  	klee_make_symbolic(source, sizeof source, "source");
  	klee_make_symbolic(target, sizeof target, "target");
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

	return indexOf(source, 0, 8, target, 0, 1, 0);
}
