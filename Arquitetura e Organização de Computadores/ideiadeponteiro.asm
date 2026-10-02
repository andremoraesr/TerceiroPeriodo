 	#le 10 inteiros no teclaod e em seguida armazena num array, dps calcula a media
 
 .data
	a: .space 40    #bytes, cada int tem 4
 	str1: .asciiz "Digite um int: "
 	str2: .asciiz "A soma de todos os ints eh: "
 	str3: .asciiz "A media eh: "
 
 .include "utlis.asm"
 
 .text
 	#ganha acesso ao endereco de a
 	la $s7, a
 	#laco para ler os 10 int
 	add $s0, $zero, $zero      #s0 -> i
 FOR1: 	slti $t0, $s0, 10
 		beq $t0, $zero, SAI1
 		#corpo do for
 		#le o int
 		printStr(str1)
 		readInt
 		#salva o int lido na pos atual do array
 		sw $v0, 0($s7)
 		#ajusta o ponteiro do array para a prox pos
 		addi $s7, $s7, 4
 		
 		#\corpo do for
 		addi $s0, $s0, 1       #incrementa ao i
 		j   FOR1
 		
 SAI1:	la $s7, a
 		add $s5, $zero, $zero     #acesso mapeado ao $s5 -> 0
 		
 		#laco para acumular os 10 int
 		add $s0, $zero, $zero      #s0 -> i
 FOR2: 	slti $t0, $s0, 10
 		beq $t0, $zero, SAI2
 		#corpo do for
 		lw $s3, 0($s7)
 		add $s5, $s5, $s3
 		
 		#ajusta o ponteiro do array para a prox pos
 		addi $s7, $s7, 4
 		
 		#\corpo do for
 		addi $s0, $s0, 1       #incrementa ao i
 		j   FOR2
 		
 SAI2:
 
 	printStr(str2)
 	printIntR($s5)
 	newLine
 	printStr(str3)
 	addi $at, $zero, 10
 	div $t0, $s5, $at
 	printIntR($t0)
 	return0
 		
 		
 		
 		
 		
 	 
