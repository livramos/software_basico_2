#include <stdio.h>
#define getsig(x)  ((x)>>31 & 1)
#define getexp(x)  ((x)>>23 & 0xff)
#define getfrac(x) ((x) & 0x7fffff)
#define makefloat(s,e,f) ((s & 1)<<31 | (((e) & 0xff) << 23) | ((f) & 0x7fffff))

typedef union { 
  float f;
  unsigned int i;
 } U;

float float2(float f){
    U uni;
    uni.f= f;
    unsigned int bit1 = getexp(uni.i);
    unsigned int sig =getsig(uni.i);
    unsigned int frac =getfrac(uni.i);
    uni.i= makefloat(sig,bit1+1,frac);
    return uni.f;
}

int main(void){
      printf("%f\n",float2(4.25));
      printf("%f\n",float2(-3.00));
}