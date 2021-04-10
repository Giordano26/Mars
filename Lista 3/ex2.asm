#Antonio Mello Babo RA00275072
#Stefano Giorda RA00277890

.data
prompt: .asciiz "Digite um numero:\n"
msg1: .asciiz "\nLista ordenada:\n"
msg2: .asciiz "\nLista normal:\n"
space: .asciiz " "
.text

addi $v0, $zero, 4  #syscall com chamada 4 prompt
la $a0, prompt		
syscall 

addi $v0, $zero, 5 #coleta do inteiro a ser analisado
syscall 
add $t0, $v0, $zero	#passa o inteiro para t0

addi $v0, $zero, 5 #coleta do inteiro a ser analisado
syscall 
add $t1, $v0, $zero	#passa o inteiro para t1

addi $v0, $zero, 5 #coleta do inteiro a ser analisado
syscall 
add $t2, $v0, $zero	#passa o inteiro para t2

addi $v0, $zero, 5 #coleta do inteiro a ser analisado
syscall 
add $t3, $v0, $zero	#passa o inteiro para t3


addi $v0, $zero, 4  #syscall chamada 4 msg2	
la $a0, msg2	
syscall 

# ============ apresenta a lista desordenada  ============ 
addi $v0, $zero, 1	# v0 = 1
add $a0, $zero, $t0	# a0 = t0
syscall

addi $v0, $zero, 4  #syscall com chamada 4 prompt
la $a0, space	
syscall 

addi $v0, $zero, 1	# v0 = 1
add $a0, $zero, $t1	# a0 = t1
syscall

addi $v0, $zero, 4  #syscall com chamada 4 prompt
la $a0, space	
syscall 

addi $v0, $zero, 1	# v0 = 1
add $a0, $zero, $t2	# a0 = t2
syscall

addi $v0, $zero, 4  #syscall com chamada 4 prompt
la $a0, space	
syscall 

addi $v0, $zero, 1	# v0 = 1
add $a0, $zero, $t3	# a0 = t3
syscall
# ========================================================

addi $v0, $zero, 4  #syscall chamada 4 com msg1	
la $a0, msg1	
syscall 

jal bblsort #chama a função do bubble sort

# ============ apresenta a lista ordenada  ============ 
addi $v0, $zero, 1	# v0 = 1
add $a0, $zero, $t0	# a0 = t0
syscall

addi $v0, $zero, 4  #syscall com chamada 4 prompt
la $a0, space	
syscall 

addi $v0, $zero, 1	# v0 = 1
add $a0, $zero, $t1	# a0 = t1
syscall

addi $v0, $zero, 4  #syscall com chamada 4 prompt
la $a0, space	
syscall 

addi $v0, $zero, 1	# v0 = 1
add $a0, $zero, $t2	# a0 = t2
syscall

addi $v0, $zero, 4  #syscall com chamada 4 prompt
la $a0, space	
syscall 

addi $v0, $zero, 1	# v0 = 1
add $a0, $zero, $t3	# a0 = t3
syscall
# ========================================================

j fim #encerra o programa 


# ====================================== Funcao ================================================
bblsort:

li $t7, 0 #variavel sentinela do loop

loop:
slt $t4, $t0,$t1 #se o da direita for menor retorna zero e vai para a branch de troca1
beqz $t4,troca1
j j1 #pula para a branch j1 se não for necessária a troca, caso o da esquerda já seja menor que o da direita

troca1:
add $t5,$zero,$t0  #variavel auxiliar armazenando o valor a esquerda da lista
add $t0,$zero,$t1 #troca o valor da esquerda pelo da direita
add $t1,$zero,$t5 #utiliza a variavel auxiliar para colocar o valor da esquerda na direita


# a lógica aqui para baixo é a mesma, apenas os numeros dos registradores a serem analisados mudou, verifica para t1,t2 ...
j1:
slt $t4,$t1,$t2
beqz $t4,troca2
j j2

troca2: 
add $t5,$zero,$t1
add $t1,$zero,$t2
add $t2,$zero,$t5

j2:
slt $t4,$t2,$t3
beqz $t4,troca3
j j3

troca3:
add $t5,$zero,$t2
add $t2,$zero,$t3
add $t3,$zero,$t5

j3:

beq $t7,4,f1 # fim do loop setado para 4, onde seria o pior caso de vezes que o bubblesort teria que rodar
addi $t7,$t7,1 #adiciona 1 a t7 para controlar o loop
j loop #a partir daqui loopa

f1: #vai para cá quando toda a lista estiver ordenada
jr $ra #retorno da função
# =============================================================================================
fim: