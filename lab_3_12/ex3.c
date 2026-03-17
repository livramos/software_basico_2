#include <stdio.h>
unsigned char switch_byte(unsigned char x){
    int fh= x & 0x0F;

    int sh= x & 0xF0;

    int result= sh>>4 | fh<<4; 
    return result;
}
unsigned char rotate_left(unsigned char x, int n){
    int z= x << n;
    int y= x >> (8-n);
    int result= z | y;
    return result;


}

int main (void){
    unsigned char x=0xAB;
    
    printf("%x\n", rotate_left(0x61, 2));
    printf("%x\n", rotate_left(0x61, 1));
    printf("%x\n", rotate_left(0x61, 7));
    return 0;
}