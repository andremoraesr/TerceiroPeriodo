.data
	
	l1: .asciiz "Digite um numero: "
	lcr: .asciiz "\n"
	lpar: .asciiz "eh par"
	limpar: .asciiz "eh impar"

.text
	#mostrar a mensagem para ler um inteiro
	addi $v0, $zero, 4            	#4 é o código para printar string
	la $a0, l1                    	#la = load adress
	syscall                       	#printa o endereço
	#ler um inteiro
	addi $v0, $zero, 5     	      	#5 é o código para ler inteiros
	syscall
	
	add $s0, $v0, $zero		#move o numero para s0
	
	#testar se o numero eh par ou impar
	andi $t1, $s0, 0x01
	beq $t1, $zero, PAR
	#o num eh impar
	addi $v0, $zero, 4
	la $a0, limpar
	syscall
	j	SAI
	
PAR:
	addi $v0, $zero, 4
	la $a0, lpar
	syscall
	   	   
SAI:   