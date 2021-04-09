#li $t0, 4 #comentar 
#li $t1, 8
#li $t2, 6
#li $t3, 9

#li $t0, 2 #adiciona 2 a t0
#addi $t0, $zero, 2  #  t0 =  zero +  2 (addi = soma com imediato, imediato não necessita alocação prévia)

li $t1, 2 #aloca int 2 em t1
li $t2, 3 #aloca int 3 em t2
add $t0,$t1,$t2 # t0 = t1 + t2 (add = adição)

sub $t3, $t0, $t1 # t3 = t0 - t1 (sub = subtração)
