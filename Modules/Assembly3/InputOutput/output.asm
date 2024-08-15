#Demonstrates printing output of different types
.text
	lw	$a0, integer		#Loads 44 into $a0
	li	$v0, 1			#Sets the system call code for printing an int
	syscall
	
	la	$a0, newline		#Loads the starting address of the newline string to $a0
	li	$v0, 4			#Sets the system call code for printing a string
	syscall
	
	l.s	$f12, single_prec	#Loads 12.54 into $f12
	li	$v0, 2			#Sets the system call code for printing a float
	syscall
	
	#$a0 has not changed, not need to reload newline to $a0
	li	$v0, 4			#Sets the system call code for printing a string
	syscall
	
	l.d	$f12, double_prec	#Loads 578.123 into $f12 (and $f13)
	li	$v0, 3			#Sets the system call code for printing a double
	syscall
	
	#$a0 has not changed, not need to reload newline to $a0
	li	$v0, 4			#Sets the system call code for printing a string
	syscall
	
.data
integer: 	.word	44
single_prec:	.float	12.45
double_prec:	.double	578.123
newline:	.asciiz "\n"