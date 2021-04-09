#Stefano Giordano RA00277890
#Antonio Mello RA00275072

li $t0, 7 
li $t1, 4
# 7 x 4
li $t5, 0 #armazena a multiplicação por soma

loop:
beqz $t1, fim # quando as somas sucessivas terminarem pula para a branch fim

add $t5,$t5,$t0 # t5 += 7
subi $t1,$t1,1 #retira um sucessivamente 


j loop #volta ao inicio do loop


fim: