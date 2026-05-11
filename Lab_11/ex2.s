/*
int bemboba (int num) {
  int local[4];
  int *a;
  int i;

  for (i=0,a=local;i<4;i++) {
    *a = num;
    a++;
  }
  return addl (local, 4);
} */

.text
.globl bemboba
bemboba: 
pushq %rbp
movq %rsp,%rbp
sub $32,%rsp

movq %r12,-8(%rbp)
movq %r13,-16(%rbp)
movq %r14,-24(%rbp)


movl $0,%r12d
movl $0,%r13d
leaq  -32(%rbp),%r14
L1: 
cmpl $4,%r12d
jge   L3
movl  %edi,(%r14)
addq  $4,%r14
addl $1,%r12d 
jmp L1

L3:
leaq -32(%rbp),%rdi
movl  $4,%esi
movl  $0,%eax
call addl
movq -8(%rbp),%r12
movq -16(%rbp),%r13
movq -24(%rbp),%r14
leave 
ret 