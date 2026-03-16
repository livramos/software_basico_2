#include <stdio.h>
unsigned char switch_byte(unsigned char x){
    int fh= x & 0x0F;
    printf("%x\n", fh);
    int sh= x & 0xF0;
    printf("%x\n", sh);
    int result= sh>>4 | fh<<4; 
    return result;
}
unsigned char rotate_left(unsigned char x, int n){
  /*int z= x << n;
    int y= x >> (8-n);
    int result= z | y;
    return result;*/
    for (int i=0; i<n; i++){
        int z= x << 1;
        int y= x >> (8-1);
        x= z | y;
    }

}

int main (void){
    unsigned char x=0xAB;
    printf("%x\n", switch_byte(x));
    printf("%x\n", rotate_left(0x61, 2));
    return 0;
}