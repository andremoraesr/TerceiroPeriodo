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
	
.macro push_context
		sw 	$a0, 0($sp)
		sw	$a1, -4($sp)
		sw	$a2, -8($sp)
		sw	$a3, -12($sp)
		sw	$s0, -16($sp)
		sw	$s1, -20($sp)
		sw	$s2, -24($sp)
		sw	$s3, -28($sp)
		sw	$s4, -32($sp)					#apenas os registradores essenciais
		sw	$s5, -36($sp)
		sw	$s6, -40($sp)					#sp significa STACK POINTER
		sw	$s7, -44($sp)
		sw	$ra, -48($sp)
		addi	$sp, $sp, -52
.end_macro

.macro pop_context
		addi $sp, $sp, 52
		lw 	$a0, 0($sp)
		lw	$a1, -4($sp)
		lw	$a2, -8($sp)
		lw	$a3, -12($sp)
		lw	$s0, -16($sp)
		lw	$s1, -20($sp)
		lw	$s2, -24($sp)
		lw	$s3, -28($sp)
		lw	$s4, -32($sp)					
		lw	$s5, -36($sp)
		lw	$s6, -40($sp)					
		lw	$s7, -44($sp)
		lw	$ra, -48($sp)
.end_macro
