#Stefano Giordano RA00277890
#Antonio Mello RA00275072


li $t0, 5 #valor a ser testado
li $t1, 10 #segundo valor a ser testado
li $t5, 0 #onde o maior valor ficar� armazenado

slt $t2,$t0,$t1 #compara se t0 < t1 e devolve t2 == 1 caso a afirma��o seja positiva

beq $t2, 1, ehmenor # if t2 == 0 pula para a branch eh menor
j nehmenor #se t2 != 0, pula para a branch nehmenor


ehmenor:
add $t5,$t5,$t1 #atribui a t5 o maior valor, nesse caso sendo o da direita da compara��o
j fim #evita de rodar o c�digo abaixo da branch "nehmenor"


nehmenor:
add $t5,$t5,$t0 #atribui o maior valor, nesse caso sendo o da esquerda da compara��o
j fim

fim:
