#contém funcoes muito usadas

.text
#a0 - numero de elementos no array
#a1 - ponteiro para a primeira posicao do array
#DESC: retorna o maior elemento do array
MAX:	
		#(PASSO 3) salva o contexto
#carrega o vetor na posicao 0 para s0 -- ma
		lw	$s0, 0($a1)
		addi $s7, $zero, 1	#s7 = i
		
FORF1: 	slt 	$t0, $s7, $a0	#i<n
		beq	$t0, $zero, SFORF1
		#corpo do for
		addi $a1, $a1, 4       #v++
		lw	$t7, 0($a1)	#coloca no t7 o v[i]
		slt 	$t1, $s0, $t7		
		beq 	$t1, $zero, SIF1	#if ma<v[i]
		#corpo do if
		add $s0, $t7, $zero	#ma <- v[i]
		#\corpo do if 

SIF1:		#\corpo do for
		addi	$s7, $s7, 1
		j	FORF1
SFORF1: #(PASSO 4) ATRIBUI VALOR DE RETORNO

		add	$v0, $zero, $s0
		#(PASSO 5) restaura o contexto
		#(PASSO 6) retornar da função
		jr	$ra