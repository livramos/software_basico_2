#include <stdio.h>

void foo (int a[], int n);

int main(void){
    int a[7] =  {3, 2, 0, 4, 1, 0, 5};
    printf("antes da funcao\n");
    for (int i=0;i<7;i++){
    printf("%d\n",a[i]);
    }
    foo(a,sizeof(a));
    printf("depois da funcao\n");
    for (int i=0;i<7;i++){
    printf("%d\n",a[i]);
    }
}