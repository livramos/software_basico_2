.text
.globl foo3
foo3: 
pushq %rbp
movq %rsp,%rbp
subq  $32,%rsp
L1: 
movsd %xmm0,-8(%rbp) 
movl %r12d,-16(%rbp)
movq %rdi,-24(%rbp)
movl %esi,-32(%rbp) 
movq $0, -8(%rbp)
movl $0,%r12d
L3:
movl -32(%rbp), %esi
cmpl  %r12d,%esi
jle L2
movq  -24(%rbp),%rdi
movsd (%rdi),%xmm0
call sin 
addsd -8(%rbp),%xmm0
movsd %xmm0,-8(%rbp)
movq -24(%rbp), %rdi
addq $8, %rdi
movq %rdi, -24(%rbp)
addl $1,%r12d
jmp L3
L2:  
 movl  -32(%rbp),%esi
 movq  -24(%rbp),%rdi
 movl -16(%rbp),%r12d # i
 leave
 ret