addi x10, x0, 32 # registrador que guarda a posição atual na string
addi x14, x0, 42 # registrador que guarda a posição final 

loop:
lb x12, 0(x10)
sb x12, 1024(x0)
beq x10, x14, end
addi x10, x10, 1 
beq x0, x0, loop

end: 
halt 

str1: .string "Hello world"
