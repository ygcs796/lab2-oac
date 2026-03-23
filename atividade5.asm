addi x11, x0, 42
loop:
lb x10, 1025(x0)
sb x10, 1024(x0)
beq x10, x11, end
jal x0, loop

end:
halt
