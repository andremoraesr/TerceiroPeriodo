.data
	str1: .asciiz "tick "
	

.text
		#laco 0-9
	
		#for(int i=0; i<10; i++)
		add $s0, $zero, $zero         #i = s0 = 0
FOR1:		slti $t0, $s0, 10             # i < 10
		beq $t0, $zero, SAI1		#t0 armazena 1 e testa se é igual a 0
		####corpo do for
		addi $v0, $zero, 4 
		la $a0, str1
		syscall
		
		addi $v0, $zero, 1
		add $a0, $zero, $s0
		
		###corpo do for
		
		
		addi $s0, $s0, 1               #i++
		j 	FOR1                 #RETORNO DO FOR AO BLOCO DE REPETICAO
SAI1:
		

		#ler um numero
	
		#acumular um num
	
		#calcular a media