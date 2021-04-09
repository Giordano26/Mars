#exemplo de while

li $t0, 10 # t0 = 10 (i)

loop:
beq $t0, 0, fim # t0 == 0 (?) --> while (i > 0)

#....

subi $t0, $t0, 1 #t0 = t0 -1 --> i--
j loop


fim:
