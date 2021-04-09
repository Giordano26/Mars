#Stefano Giordano RA00277890
#Antonio Mello RA00275072


li $t0, 0 #guarda a soma
li $t1,2 #começa a variavel com 2 (terceiro digito) pq os dois primeiros digitos são = 0
#começa a soma com os subseguintes digitos do ra
addi $t0,$t1,7
addi $t0,$t0,7
addi $t0,$t0,8
addi $t0,$t0, 9
#ultimo digito também é = 0, não há necessidade de somar
