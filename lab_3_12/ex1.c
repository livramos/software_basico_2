#include <stdio.h>

 
int main(void) {
  unsigned int x = 0x87654321;
  unsigned int y, z;

 
  y = x & 0x000000FF;

  
  z = 0xFF000000|x;

  printf("%08x %08x\n", y, z);
}



