#Stefano Giordano RA00277890
#Antonio Mello RA00275072


li $t0, 384 #dividendo 
li $t1, 50 #divisor
div $t2,$t0,$t1 # t2 armazena o quociente inteiro da divis�o

mul $t3,$t1,$t2 #aqui multiplicamos o quociente inteiro pelo divisor, obtendo o valor sem o resto

sub $t5,$t0,$t3 # a subtra��o do dividendo o valor sem o resto, assim o resultado nos dar� o resto em si