# Este codigo realiza um teste de escrita e leitura na memoria do MIPS
# A escrita da memoria do MIPS e feita com a instrucao SW (store word)
# A leitura da memoria do MIPS e feita com a instrucao LW (load word)
# Ambas as instrucoes necessitam de um endereco base da memoria
# O endereco de comeco da memoria de dados do MIPS no MARS e 268500992

addi $t0, $zero, 268500992	# t0 = 268500992 (endereco de inicio da memoria de dados)
addi $t1, $zero, 7      	# t1 = 7
sw $t1, ($t0)			# Armazena o valor de t1 na primeira posicao da memoria de dados
addi $t1, $zero, 3      	# t1 = 3
sw $t1, 4($t0)			# Armazena o valor de t1 na segunda posicao da memoria de dados
lw $t2, ($t0)			# Carrega em t2 o valor armazenado na primeira posicao da memoria de dados 