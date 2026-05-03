

.text 
.globl add2
add2: 
pushq  %rbp
movq %rsp, %rbp
subq $16, %rsp
movq %r12,-8(%rbp)
movq %r13,-16(%rbp)

movl $0,%r12d
movl $0,%r13d

L1:
cmpq  $0,%rdi
je    L2
movl  (%rdi),%r12d
movq  8(%rdi),%rdi
movl  $0,%eax 
call  add2
movl  -8(%rbp), %r12d
movl  %eax,%r13d
addl  %r12d,%r13d
movl  %r13d,%eax
jmp   L3


L2:
movl $0,%eax
jmp L3

L3: 
movq  -16(%rsp),%r13
movq  -8(%rsp),%r12
leave
ret 