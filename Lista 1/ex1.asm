#Stefano Giordano RA00277890
#Antonio Mello RA00275072


li $t0, 0 #guarda a soma
li $t1,2 #come�a a variavel com 2 (terceiro digito) pq os dois primeiros digitos s�o = 0
#come�a a soma com os subseguintes digitos do ra
addi $t0,$t1,7
addi $t0,$t0,7
addi $t0,$t0,8
addi $t0,$t0, 9
#ultimo digito tamb�m � = 0, n�o h� necessidade de somar
