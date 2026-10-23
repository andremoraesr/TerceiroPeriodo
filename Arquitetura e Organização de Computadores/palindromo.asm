.data
    # A palavra a ser testada (mude para testar outros casos, ex: "MIPS")
    senha: .asciiz "ARARA"
    
    msg_liberado: .asciiz "Acesso Liberado: É um palíndromo!\n"
    msg_negado:   .asciiz "Acesso Negado: Não é um palíndromo.\n"
    
.include "utlis.asm"

 .text
 
  	la $a0, senha
  	jal PEGA_ULTIMO
  	add $a1, $v0, $zero
  	
  	jal EH_PALINDROMO
  	
  	beq $v0, $zero, MENS_FALSA
  	printStr(msg_liberado)
  	
  	return0
  	MENS_FALSA: printStr(msg_negado)
  	return0
  	
 
PEGA_ULTIMO:
	push_context
	
	add $v0, $a0, $zero

	WHILE1:	lb $t0, 0($v0)
			beq  $t0, $zero, SAIW1
		  	addi $v0, $v0, 1
		  	j WHILE1
		  	
		SAIW1:
		addi $v0, $v0, -1	#sem isso, aponta para o /0 da string
		pop_context
		jr $ra
	
EH_PALINDROMO:
	push_context
	
	WHILE2:
		bge $a0, $a1, EH_VERDADEIRO	#se o end do começo tiver passado o do final
		
		lb  $t0, 0($a0)
		lb  $t1, 0($a1)
		
		bne $t0, $t1, EH_FALSO
		
		addi $a0, $a0, 1			#passa para prox letra
		addi $a1, $a1, -1			#letra anterior
		
		j	WHILE2
		
	EH_VERDADEIRO:
		addi $v0, $zero, 1
		
		pop_context
		
		jr $ra
	EH_FALSO:
		addi $v0, $zero, 0
		
		pop_context
		
		jr $ra
		
		
		
