.data
    # Array de temperaturas (o valor 999 indica o fim do array)
    temperaturas: .word -5, 12, 0, 3, -2, 8, 15, -1, 999
    
    # Mensagens para o usuário
    msg_resultado: .asciiz "Total de dias com temperatura positiva: "
   
.include "utlis.asm"

.text
	
	add $s0, $zero, $zero    #s0 sera o contador de dias
	la $s7, temperaturas	#s7 ponteiro para o vetor de temperaturas
	add $s2, $zero, $zero    #s2 sera o i do for
	
FOR1: slti $t0, $s2, 9		#t0 <- s2<9?
	beq  $t0, $zero, SF1	#se s2>9, sai do for
	lw $s4, ($s7)			#carrega word atual
	add $a0, $s4, $zero		#(PASSO 1)argumento $a0 da função é a temperatura atual
	jal DIAS				#PASSO 2: chamar função
	#recuperar valor de retorno do v0, já acrescenta ao contador
	add  $s0, $s0, $v0		#acrescenta ao contador o dia caso seja positivo
	addi $s7, $s7, 4		#arit ponteiro +4
	addi $s2, $s2, 1		#i++ (s2 ++)
	
	j FOR1				#volta pro laço
	
SF1:
	printStr(msg_resultado)
	printIntR($s0)
	
	return0
	
.include "bibExercicio1.asm"