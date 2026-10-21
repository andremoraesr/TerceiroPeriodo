
.text

DIAS: 
	#passo3: salva contexto
	push_context
	
	add $s5, $a0, $zero		#s5 guarda o valor do argumento
	slti  $t1, $s5, 1		#t1 <- s5 <= 0 (se é estritamente positivo)
	xori $t1, $t1, 1
	#passo 4:  atribui valor de retorno
	add $v0, $t1, $zero
	
	#passo 5: restaura contexto
	pop_context
	
	#passo 6: retornar da função
	jr $ra
	