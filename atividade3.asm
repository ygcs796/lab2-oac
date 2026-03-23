# carregamento de variáveis 
lw x10, f
lw x11, g
lw x12, h
lw x13, i
lw x14, j

# escopo da condicional
beq x13, x14, end1

sub x10, x11, x12
sw x10, f
halt

end1: 
	add x10, x11, x12
	sw x10, f
	halt

f: .word 0x0
g: .word 0x2
h: .word 0x3
i: .word 0x4
j: .word 0x5
