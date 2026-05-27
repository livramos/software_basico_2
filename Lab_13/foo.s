.text
.globl foo

foo:
addl  $1,%edi 
movl  $0,%eax
movl  %edi, %eax

ret
