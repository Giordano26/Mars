#Stefano Giordano RA00277890
#Antonio Mello RA00275072

li $t0, 9 #numero a ser calculado o fatorial
li $t5, 1 #operando auxiliar que guardara tbm o resultado final

loop: 

beqz $t0, fim # quando t0 chegar a 0, significa que todas multiplicações foram realizadas

mul $t5,$t5,$t0 # n*n-1...
sub $t0,$t0,1 # subtrai 1 de t0 para continuar a conta fatorial

j loop #volta para a branch loop até q t0 = 0

fim: