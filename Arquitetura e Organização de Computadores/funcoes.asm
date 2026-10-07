#exemplificar uso de funções em Assembly
.data
	ma :	.space 4
	str1: .asciiz "Digite um número: "
	str2: .asciiz "O maior numero lido foi "
	arr: .space 40
	a: 	.space 4
	
.include "utlis.asm"

.text
	
	la	$s7, arr	#ponteiro para o array
	add	$s0, $s0, $zero	#i = 0
FOR1:	slti	$t0, $s0, 10
		beq	$t0, $zero, SF1
		#corpo do for
		printStr(str1)
		readInt
		sw	$v0, ($s7)
		addi $s7, $s7, 4	#arit ponteiro arr++
		#\corpo do for
		addi	$s0, $s0, 1	#i++
		j	FOR1
		
SF1:		#(PASSO 1) definir os argumentos
		addi	$a0, $zero, 10	#n=10
		la	$a1, arr	#ponteiro para arr *arr = arr[0]
		#(PASSO 2) chamar funcao
		jal 	MAX
		#(PASSO 7) recuperar o valor de retorno
		add $s6, $v0, $zero
		printStr(str2)
		printIntR($s6)
		
	return0
	
.include "bibFuncoes.asm"