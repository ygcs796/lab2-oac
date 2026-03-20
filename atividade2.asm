# carregando os valores da memória
lw x10, a
lw x11, b
lw x12, m

# verificação
blt x11, x12, if
beq x0, x0, else

if:
add x12, x10, x11
sw x12, m
halt

else:
sub x12, x10, x11
sw x12, m
halt 

# criando as variáveis na memória
a: .word 0x6
b: .word 0xF
m: .word 0x0
