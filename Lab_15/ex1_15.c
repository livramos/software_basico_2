 #include <stdio.h>
 #include <math.h> 
 #define PI 3.14
 //primeira questão  
//float foo (double a, float b);
//float foo1 (float a, float b);
//  double foo2 (float a, float b);
double foo3 (double *a, int n);
 int main (void){
   double arr[] ={101,10,5,PI,3.1};
   double *a = arr;
   float b=10.5;
  // printf("primeira questao %lf\n",foo(a,b));
  //  printf("segunda questao %lf\n",foo1( PI,PI/2));
  //printf("terceira questao %lf \n",foo2(PI,PI));
  printf("terceira questao %lf \n",foo3(a,5));

 }