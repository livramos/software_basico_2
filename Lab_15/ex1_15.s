#xmm0 vai ser retorno, xmm1 vai ser 1 argumento, xmm2 segundo
#argumento e xmm3 vou guardar valores e  xmm4 tmb

.text 
.globl foo
foo: 
pushq %rbp
movq  %rsp,%rbp
subq  $16,%rsp                                                               
movsd %xmm3,-8(%rbp)

cvtss2sd %xmm1,%xmm1
#xmm3-> recebe xmm1 e xmm4-> recebe xmm2 pq se não os valores se perdem 
#poderia fazer buscando o valor de xmm1 e xmm2 na memoria ao inves de armazenar em parametros?
movsd  %xmm0,%xmm3
addsd  %xmm1,%xmm0
subsd  %xmm1,%xmm3
mulsd  %xmm3,%xmm0
cvtsd2ss %xmm0,%xmm0

movsd -8(%rbp),%xmm3
leave 
ret