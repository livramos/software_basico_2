.data 
  print1: .string "numero:"
  print2: .string "%d"

.text
.globl novonum
novonum:

pushq  %rbp
movq   %rbp,%rsp
subq   $??
movq   %r12,-8(%rbp)