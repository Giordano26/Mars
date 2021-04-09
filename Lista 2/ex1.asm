#Stefano Giordano RA00277890

.data 
prompt: .asciiz "Digite um valor de radiação(entre 1 a 100):\n"  #mensagem de input

.text 


addi $v0, $zero, 4  		#syscall com código 4 (mostrar mensagem no prompt)
la $a0, prompt	
syscall  

addi $v0, $zero, 5	#syscall com código 5 (coleta de input do usuário do tipo inteiro)
syscall


add $t0, $v0, $zero #move o input de v0 para t0

sle $t1,$t0, 50 #se t0 <= 50 então t1 = 1
beq $t1,1, tipo1 # se t1 = 1 pula para a branch tipo1

sle $t1,$t0, 99 #se t0 <= 99  então t1 = 1
beq $t1,1, tipo2# se t1 = 1 pula para a branch tipo2

j tipo3 #se t0 > 99 pula para a branch tipo3



tipo1:
li $t5, 1 #t5 = 1

j fim #evita de rodar o código abaixo

tipo2:
li $t5,2 #t5 = 2

j fim #evita de rodar o código abaixo


tipo3:
li $t5,3 #t5 = 3
j fim

fim:


