
.text
.globl add
add: 
pushq %rbp
movq %rsp,%rbp
subq $8,%rsp
movl  %r12d,-8(%rbp)

movl $0,%r12d
L1:

cmpq $0,%rdi
je   L2
addl (%rdi),%r12d
movq  8(%rdi),%rdi
jmp  L1


L2: 
movl  %r12d,%eax 

movl -8(%rbp),%r12d
leave 
ret 
 