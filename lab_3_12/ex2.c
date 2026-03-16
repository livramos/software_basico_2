#include <stdio.h>

int odd_ones(unsigned int x) {

 int odd =0;
  while (x) {
    odd = odd ^ (x & 1);
    printf ("%d", x & 1);
    x = x >> 1;
  }
    return odd;
}
int main() {
  printf(" \n %x tem numero %s de bits\n",0x01010101,odd_ones(0x01010101) ? "impar":"par");
  printf("\n %x tem numero %s de bits\n",0x01030101,odd_ones(0x01030101) ? "impar":"par");
  return 0;
}