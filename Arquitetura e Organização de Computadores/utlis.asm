.macro printStr(%str)
	addi $v0, $zero, 4
	la $a0, %str
	syscall
.end_macro

.macro newLine
	addi $v0, $zero, 4
	la $a0, CR
	syscall
.end_macro

.macro readInt
	addi $v0, $zero, 5
	syscall
.end_macro

.macro printIntR(%r)
	addi $v0, $zero, 1
	add $a0, $zero, %r
	syscall
.end_macro

.macro printInt()
	addi $v0, $zero, 1
	add $a0, $zero, %r
	syscall
.end_macro

.macro return0
	li $v0, 10
	syscall
.end_macro
#isso é uma biblioteca que limpa o codigo pois fica menos repetitivo 

.data
	CR: .asciiz "\n"
