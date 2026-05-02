  /*
  int filtro(int x, int lim) {
  if (x < lim)
    return 0;
  else
    return x;
}

int nums[5] = {3,-5,7,8,-2};

int main() {
  int i;
  int *p = nums;
  for (i = 0; i < 5; i++) {
    printf("%d\n", filtro(*p,LIM));
    p++;
  }
  return 0;
}
  */
  .data
  nums: .int 3, -5, 7, 8, -2
  s1:   .string "%d\n"

  .text
  .globl filtro
  filtro: 
  cmpl %esi,%edi
  jge  L3
  movl $0,%eax
  
  ret

  L3: 
  movl %edi,%eax
  
  ret


  .globl main
  main:
  /* prologo */
     pushq %rbp
     movq  %rsp, %rbp
     subq  $16, %rsp
     movq  %rbx, -8(%rbp)
     movq  %r12, -16(%rbp)

    movq  $nums, %r12
    movl  $0, %r13d
  L1: 
    cmpl  $5,%r13d
    jge   L2
    movl  (%r12),%edi
    movq  $1,%rsi 
    movl $0,%eax
    call filtro

    movl %eax, %r11d
    movq $s1,%rdi
    movl %r11d,%esi
    movl $0,%eax
    call printf




    addl $1,%r13d
    addq $4,%r12
    jmp L1

L2:
  /* finalizacao */
     movq -8(%rbp), %rbx
     movq -16(%rbp), %r12
     leave
     ret