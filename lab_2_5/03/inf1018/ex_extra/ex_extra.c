#include <stdio.h>
/*exercicio extra 1 -> Lab_2*/
int is_little(void){
    int i = 2;
    char *c =(char*)&i;
    if(*c==2){
        return 1;   
    }
    return 0;
}

/*main de teste  do exercicio extra 1 -> Lab_2
int main(){
    if(is_little()){
        printf("Little Endian\n");
    }else{
        printf("Big Endian\n");
    }
    return 0;
} /*

/*exercicio extra 2 -> Lab_2*/
void num2string(char *s, int num, int base){
    
}