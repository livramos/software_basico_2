.text 
.globl  map2
map2:
 pushq %rbp
 movq %rsp,%rbp
 subq $32,%rsp
 movq %r12, -8(%rbp)
 movq %r13, -16(%rbp)
 movq %r15, -24(%rbp)
 movq %rbx, -32(%rbp)

movl $0,%r12d
movl %edx,%r13d
movq  %rsi,%r15
movq  %rdi,%rbx

L1:
cmpl  %r13d,%r12d
jge   L2
movl  (%rbx),%edi
movl  $0,%eax 
call  f 
movl  %eax, (%r15)
addq  $4,%r15
addq  $4,%rbx
addl  $1,%r12d
jmp L1

L2: 
 movq -32(%rbp),%rbx
 movq -24(%rbp),%r15
 movq -16(%rbp),%r13
 movq -8(%rbp),%r12
 leave 
 ret


