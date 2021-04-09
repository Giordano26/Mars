#Stefano Giordano RA00277890
#Antonio Mello RA00275072

li $t0, 8 # x  = 8
li $t1, 4 # y = 4
li $t2, 2 # i = 2
li $t5, 0 # guarda a soma final

loop:
beq $t2, 0 , fim # t2 = 0 (?) --> while (i > 0)

addi $t1,$t1,2 # y = y + 2, equanto i > 0
subi $t2,$t2,1 # i-- 

j loop #volta ao começo do loop até que t2  == 0

fim: #chega aqui caso t2 == 0

add $t5,$t0,$t1 #soma final: z = x + y