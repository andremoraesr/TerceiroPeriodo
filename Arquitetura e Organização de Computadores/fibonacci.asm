.include "utlis.asm"

.data
	str1: .asciiz "Digite o indice de fibonacci a ser calculado: "
	str2: .asciiz "O numero "
	str3: .asciiz " nao eh valido"
	str4: .asciiz "O num. de fibonacci relativo a "
	str5: .asciiz "eh igual a"

.text

	addi $s0, $zero, 1  #antant
	addi $s1, $zero, 1  #ant
	
	#le o n
TA:	printStr(str1)
	readInt
	add $s7, $zero, $v0   #move o numero para s7
	
	#testa se n <= 0 eq n < 1
	slti $t0, $s7, 1
	beq $t0, $zero, CONTINUE1
	#corpo do if
	printStr(str2)
	printIntR($s7)
	printStr(str3)
	newLine
	j TA
	#or return0
	#\corpo do if
	
	
	
CONTINUE1:	
	slti $t0, $s7, 3
	beq $t0, $0, CONTINUE 2
	#corpo do if
	printStr(str4)
	printIntR($s7)
	printStr(str5)
	printInt()  #fazer o printInt!!!!!!!!!!!!!!!
	#\corpo do if
	
	
	

