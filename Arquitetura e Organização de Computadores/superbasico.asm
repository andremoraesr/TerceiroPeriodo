.data      #dados estaticos ficam em data
	w: 42
	y: 10
	z: 67
	x: .space 4
	f: .float 3.1415
	s1: .asciiz "sou feliz"

.text      #instruções
	#x = ((y + z)*w)*((y + z)*w)
	#assumindo que as variaveis foram carregadas para registradores:
	addi $s0, $zero, 42                 #soma com um valor imediato, s0 <- 0+42
	addi $s1, $zero, 10                 # s1 <- 0+42
	addi $s2, $zero, 67                 # s2 <- 0+67
	
	# y + z
	add  $t0, $s1, $s2
	#w * (y + z)
	mul  $t0, $t0, $s0
	mul $s3, $t0, $t0