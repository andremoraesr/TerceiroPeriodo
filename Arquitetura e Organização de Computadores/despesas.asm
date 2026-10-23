.data 
	transacoes: .word 150, -45, -120, 300, -15, 0
	msg_total: .asciiz "O total de despesas foi: R$ "
	
.include "utlis.asm"
	
.text
	
	add $s0, $zero, $zero    #s0 sera o total das despesas
	la $s7, transacoes
	add $s1, $zero, $zero     #s1 sera o i dor for
	
FOR1: slti $t0, $s1, 6
	beq $t0, $zero, SF1
	lw  $a0, ($s7)   	#PASSO 1: argumento da função
	jal DESPESA		#PASSO 2: chamar função
	addi $s7, $s7, 4	#proximo elemento do array
	add  $s0, $s0, $v0  #soma o resultado da função que está no v0, salvando o retorno (PASSO 7)
	addi $s1, $s1, 1    #i++
	j FOR1
	
SF1:
	printStr(msg_total)
	printIntR($s0)
	
	return0
	
DESPESA:
	push_context	#PASSO 3: salva contexto
	
	beq	$a0, $zero, EH_ZERO    #se for 0, retorna 0
	slti	$t0, $a0, 0
	beq	$t0, $zero, EH_ZERO	   #se for maior que 0, retorna 0
	nor  $t1, $a0, $zero
	addi $v0, $t1, 1	   #se for menor que 0, transformo em positivo e salvo como retorno (PASSO 4)
	
	pop_context #PASSO 5: RESTAURAR CONTEXTO
	
	jr $ra	  #PASSO 6: retornar
	
EH_ZERO:
	add $v0, $zero, $zero	#PASSO 4 deste caso
	
	pop_context	#PASSO 5 deste caso
	
	jr $ra		#PASSO 6: retornar da função neste caso
	