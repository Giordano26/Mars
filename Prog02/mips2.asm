#instruções de decisão
#j fim #jump to fim, só serão executadas intruções abaixo de "fim:"
#li $t0, 3


#fim:
#li $t1, 5

#==========================================

li $t0,2

beq $t0, 2, ehdois # if t0 == 2
li $t5, 0  #essa linha seria igual ao else
j fim #as instruções são top down, logo é necessário um jump para evitar o caso de "ehdois"



ehdois:   #linha executada se o if for verdadeiro
li $t5, 1 

fim: 