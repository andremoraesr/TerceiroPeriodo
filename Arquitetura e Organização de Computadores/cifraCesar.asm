.data
	chave: .word 3
	mensagem: .asciiz "SEGREDO"
	saida: .asciiz "Mensagem criptografada: "
	
.include "utlis.asm"

.text
	
	la $a0, mensagem	#endereço da mensagem
	la $t0, chave		#endereço da chave
	lw $a1, ($t0)		#valor da chave
	#PASSO1: args
	jal PROCESSA		#PASSO 2: chama função
	
	la $s0, mensagem
	printStr(saida)
	printStrR($s0)
	
	return0

PROCESSA: 
	#PASSO 3: salvar contexto
	push_context
	add $s1, $zero, $zero	#será o i do for
	WHILE1:
		lb $a2, 0($a0)		#PASSO 2.1: argumento
		beq  $a2, $zero, SAIF1
		jal APLICA_CIFRA	#PASSO 2.2: chama função
	
		sb $v1, 0($a0)		#PASSO 2.7: salva o retorno já inserindo no array
		addi $a0, $a0, 1	#move 1 byte na string
		j WHILE1
	
	SAIF1:
				
		pop_context
		jr $ra

	APLICA_CIFRA:
	
		#PASSO 3: salvar contexto
		push_context
		add $v1, $a2, $a1 
		
		pop_context
		
		jr $ra
	