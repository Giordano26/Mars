#Antonio Mello Babo RA00275072
#Stefano Giorda RA00277890

.data 
prompt: .asciiz "Digite um numero:\n"
message1: .asciiz "Par\n"
message2: .asciiz "Impar\n"
.text 

jal ehpar #chama função ehpar

add $t5,$zero,$v0 #adiciona o retorno em t5

beq $t5, 1, men1 #se t5 for 1 significa que é par
j men2

men1: #mensagem para input par
addi $v0, $zero, 4  		
la $a0, message1	
syscall 
j fim

men2: #mensagem para input impar
addi $v0, $zero, 4  		
la $a0, message2	
syscall 

j fim #encerra o programa
# ====================================== Funcao ================================================
ehpar:
addi $v0, $zero, 4  #output pedindo o numero		
la $a0, prompt		
syscall 

addi $v0, $zero, 5 #coleta do inteiro a ser analisado
syscall 
  
add $t0, $v0, $zero	#passa o inteiro para t0

rem $t1,$t0,2 #armazena em t1 o resto da divisão do inteiro por 2

beq $t1,0,sim #se o resto da divisão for 0 significa que é par e pula para a branch sim
j nao

sim: #se for sim o registrador armazena 1
li $v0,1
jr $ra

nao: #se for nao o registrador armazena 0
li $v0,0
jr $ra
# =============================================================================================
fim: