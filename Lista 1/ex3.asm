#Stefano Giordano RA00277890
#Antonio Mello RA00275072

li $t0, 7 # x = 7
li $t1, 7 # x = 7

beq $t0,$t1, equal #testa se x == y, e em caso afirmativo pula para a branch equal
j dif #em caso negativo, de diferença, pula para a branch dif


equal:
li $t5,2 #se x == y, t5 = 2
j fim #evita de rodar o codigo abaixo

dif:
li $t5,3 #se x != y , t5 = 3 
j fim

fim: