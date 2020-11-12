#include "klee/klee.h"

char* substring(char* str, int beginIndex, int endIndex) {

    if (beginIndex < 0) {

        return "";

    }

    if (endIndex > (sizeof(str)/sizeof(char))) {

        return "";

    }

    int subLen = endIndex - beginIndex;

    if (subLen < 0) {

        return "";

    }

    if ((beginIndex == 0) && (endIndex == (sizeof(str)/sizeof(char)))) {
      return str;
    }
    else {
      char *subbuff;
      int j = 0;
      for(int i = beginIndex; i < endIndex; i++) {
        subbuff[j] = str[i];
        j++;
      }9
      subbuff[j] = '\0';
      return subbuff;
    }

    return "";

}

int startsWith(char* str, char* prefix, int toffset) {

    int to = toffset;

    int po = 0;

    int pc = sizeof(prefix)/sizeof(char);

    // Note: toffset might be near -1>>>1.

    if ((toffset < 0) || (toffset > (sizeof(str)/sizeof(char)) - pc)) {

        return 0;

    }

    while (--pc >= 0) {

        if (str[to++] != prefix[po++]) {

            return 0;

        }

    }

    return 1;

}

int compress (char* h, char* l) {
  int i;
  for (i = 1; i <= 4; i++) {
    char subbuff[4];
    int j = 0;
    for(int k = 0; k < i; k++) {
      subbuff[j] = l[k];
      j++;
    }
    subbuff[j] = '\0';
    if (startsWith (h, subbuff, 0) == 0) {
      return 0;
    }
  }
  return 1;
}

int main(){
	char source[4];
  char target[4];

  klee_make_symbolic(source, sizeof source, "source");
  klee_make_symbolic(target, sizeof target, "target");

	return compress(source, target);
}
