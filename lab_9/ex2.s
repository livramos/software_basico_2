
.text 
.globl fat
 fat:
 pushq %rbp
 movq  %rsp,%rbp
 subq  $24,%rsp
 movl  %r12d, -8(%rbp)
 movl  %r13d, -16(%rbp)
 movl  %r14d, -24(%rbp)
 
 cmpl  $0,%edi
 je    L1
 movl  %edi,%r12d
 movl  %r12d,%r13d
 subl  $1,%r13d
 movl  %r13d,%edi
 movl  $0,%eax
 call  fat
 imul  %r12d,%eax
 jmp L2

 L1:
   movl $1,%eax
   jmp L2
L2:
   movl   -24(%rbp),%r14d
   movl   -16(%rbp),%r13d
   movl   -8(%rbp),%r12d
   leave
   ret