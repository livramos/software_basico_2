

.text 
.globl boo
boo:
pushq %rbp
movq  %rsp,%rbp
subq  $24,%rsp
movq  %r12,-8(%rbp)
movq  %r13,-16(%rbp)
movq  %r14,-24(%rbp)

movl %esi,%r12d

L1:
cmpl $0, %r12d
je L2
movl  4(%rdi),%r13d
movq   %rdi,%r14
movl (%rdi),%edi
movl   %edx,%esi
movl   $0,%eax
call   f 
movl   %eax,4(%r14)
addq   $8,%r14
movq   %r14,%rdi
subl   $1,%r12d
jmp    L1

L2:
movq  -24(%rbp),%r14
movq  -16(%rbp),%r13
movq  -8(%rbp),%r12
leave 
ret