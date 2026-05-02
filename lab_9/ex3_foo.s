

.text
.globl foo
 foo:
 pushq %rbp
 movq  %rsp,%rbp
 subq  $16, %rsp
 movl  %r12d,-8(%rsp)
 movl  %r13d,-16(%rsp)
 
 movl $0,%r13d
 movl  $0,%r12d
L2:
 compl %esi,%r13d
 jg L3 
 addl %rdi,%r12d
 cmpq $0,%rdi
 je   L2






 
L3:
 movl  -16(%rsp),%r13d
 movq  -8(%rsp),%r12
 leave 
 ret 

