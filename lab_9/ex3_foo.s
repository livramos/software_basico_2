

.text
.globl foo
 foo:
 pushq %rbp
 movq  %rsp,%rbp
 subq  $16, %rsp
 movq  %r12,-8(%rbp)
 movl  %r13d,-16(%rbp)
 
 movl $0,%r13d
 movq  $0,%r12
L2:
 cmpl %esi,%r13d
 jg L3 
 addl (%rdi),%r12d
 cmpl $0,(%rdi)
 jne   L1
 movl %r12d,(%rdi)
 movl $0,%r12d
L1:
  addl  $1,%r13d
  addq  $4,%rdi
  jmp L2


L3:
 movl  -16(%rbp),%r13d
 movq  -8(%rbp),%r12
 leave 
 ret 

