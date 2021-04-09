#Stefano Giordano RA00277890

addi $t0, $zero, 268500992       # adiciona o primeiro endereço de memoria em t0
addi $t1, $zero, 9               # dois ultimos digitos = 9+0
sw $t1, 36($t0)                  # soma de todos os digitos --> 33 --> 36