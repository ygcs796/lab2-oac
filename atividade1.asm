lw x10, a 
lw x11, b
lw x12, m
add x12, x0, x10
blt x11, x12, end1 
sw x12, m # executa só se blt der falso
halt # executa só se blt der falso

end1:
add x12, x10, x11
sw x12, m 
halt

a: .word 0x6
b: .word 0xF
m: .word 0x0
