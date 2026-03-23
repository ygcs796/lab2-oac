addi x11, x0, 1 # armazenando um imediato que, no formato binário, acende o primeiro led
addi x12, x0, 1 # registrador que vai representar o botão ligado (input 1 do arduino virtual, entrada 8 -> estado ligado representado por 000001)
addi x14, x0, 32 # registrador que vai verificar se chegou ao último led 
add x13, x0, x0 # registrador que vai representar o atual estado do botão 
sb x11, 1029(x0) # escrevendo 000001 nos pinos 2-7, para ligar apenas o 2
sb x12, 1027(x0) # escrevendo zero nos pinos 8-13 (usaremos apenas o 8, entretanto)

loop:

lb x13, 1026(x0) # lendo o atual estado do botão 
beq x13, x12, incrementacao # condicional que vai identificar quando o botão for apertado 
beq x13, x14, fim
jal x0, loop

incrementacao: 
add x11, x11, x11 # somando o registrador que liga ou desliga os pinos com ele mesmo, visando a dobrá-lo e, assim, fazer um shift left 
sb x11, 1029(x0)

jal x0, loop 

fim: 
halt 
