.data 
  print1: .string "numero:"
  print2: .string "%d"

.text
.globl novonum
novonum:

pushq  %rbp
movq   %rsp,%rbp
subq   $16,%rsp
movq   %r12,-8(%rbp)

movq   $print1, %rdi
call printf

movq $print2,%rdi
leaq -8(%rbp),%rsi
call scanf

movl -8(%rbp), %eax
movq -8(%rbp), %r12
leave
ret