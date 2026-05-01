/*#include <stdio.h>

int nums[4] = {65, -105, 111, 34};

int main (void) {
  int i;
  int s = 0;

  for (i=0;i<4;i++)
    s = s+nums[i];

  printf ("soma = %d\n", s);

  return 0;
}*/

.data
S2:    .int  65, -105, 111, 34
Sf:  .string "%d\n"    /* primeira string de formato para printf */

.text
.globl  main
main:

/********************************************************/
/* mantenha este trecho aqui e nao mexa - prologo !!!   */
  pushq   %rbp
    movq    %rsp, %rbp
      subq    $16, %rsp
        movq    %rbx, -8(%rbp)  /* guarda rbx */
          movq    %r12, -16(%rbp)  /* guarda r12 */
/********************************************************/
movq $S2,%r12
movl $0,%r13d
movl $0,%r14d

L1: 
  cmpl $4,%r13d
  jge L2
  addl (%r12),%r14d
  addl $1,%r13d
  addq $4,%r12
  jmp L1


L2:
 movl %r14d, %eax
 /*************************************************************/
/* este trecho imprime o valor de %eax (estraga %eax)  */
  movq    $Sf, %rdi    /* primeiro parametro (ponteiro)*/
  movl    %eax, %esi   /* segundo parametro  (inteiro) */
  movl  $0, %eax
  call  printf       /* chama a funcao da biblioteca */
/*************************************************************/


/***************************************************************/
/* mantenha este trecho aqui e nao mexa - finalizacao!!!!      */
  movq  $0, %rax  /* rax = 0  (valor de retorno) */
  movq    -16(%rbp), %r12 /* recupera r12 */
  movq    -8(%rbp), %rbx  /* recupera rbx */
  leave
  ret      
/***************************************************************/