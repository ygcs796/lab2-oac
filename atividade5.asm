addi x11, x0, 42 # armazenando o valor de * em ASCII em um registrador 
loop:
lb x10, 1025(x0) 
sb x10, 1024(x0)
beq x10, x11, end
jal x0, loop

end:
halt
