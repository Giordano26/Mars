#Stefano Giordano RA00277890
#Antonio Mello RA00275072

li $t0, 9 #numero a ser testado
li $t2, 1 #auxiliar para as mul

div $t1, $t0 , 2 #auxiliar para ir at� a metade de t0

loop:
mul $t3,$t2,$t2 #faz a primeira multiplica��o entre os numeros
beq $t3,$t0, perfeito #verifica se a multiplica��o de um numero por ele mesmo � igual ao valor de t0, se for pula para a branch perfeito
beq $t2, $t1, nperfeito #verifica se a variavel auxiliar chegou na metade do valor de t0, se chegar pular para a branch nperfeito j� q n�o � poss�vel encontrar um quadrado perfeito
addi $t2,$t2,1 #adiciona mais um para as multiplica��es sucessivas
j loop


perfeito:
li $t5,1 #se for um quadrado perfeito, t5 = 1
j fim

nperfeito:
li $t5, 0 #se n�o for um quadrado perfeito, t5 = 0

fim: