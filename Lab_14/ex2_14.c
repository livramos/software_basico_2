#include <stdio.h>
#include <math.h>
#define getsig(x)  ((x)>>31 & 1)
#define getexp(x)  ((x)>>23 & 0xff)
#define getfrac(x) ((x) & 0x7fffff)
#define makefloat(s,e,f) ((s & 1)<<31 | (((e) & 0xff) << 23) | ((f) & 0x7fffff))

typedef union { 
  float f;
  unsigned int i;
 } U;

float int2float(int i){
  U uni;
  uni.f=0;
 if (i==0){
  return uni.f;
 }else{
   int signal=getsig(i);
   unsigned int abs_i = (signal) ? (unsigned int)(-(long)i) : (unsigned int)i;
   unsigned int abs2=abs_i;
   int a;
   for( a=0;abs_i!=0;a++){
    abs_i=abs_i>>1;
   }
   unsigned int frac = (abs2 <<(24 - a)) & 0x7fffff;
   uni.i=makefloat(signal,(a-1)+127,frac);
   return uni.f;
 }
}



 int main(void){
    int i;

   printf("\n******** int2float ****************\n");
   i = 0;
   printf(" %d -> %+10.4f\n", i, int2float(i));
   i = 1;  
   printf(" %d -> %+10.4f\n", i, int2float(i));
   i = -1;  
   printf(" %d -> %10.4f\n", i, int2float(i));
   i = 0x7fffffff;  
   printf(" %d -> %+10.4f\n", i, int2float(i));
   i = -i;
   printf(" %d -> %+10.4f\n", i, int2float(i));
   i = 12345;
   printf(" %d -> %+10.4f\n", i, int2float(i));
   i = -12345;
   printf(" %d -> %+10.4f\n", i, int2float(i));
   return 0;
 }