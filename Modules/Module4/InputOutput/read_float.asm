#Demonstrates reading a float
.text
	la	$a0, prompt	#Loads starting address of prompt string to $a0
	li	$v0, 4		#Sets the syscall code for printing a string
	syscall
	
	li	$v0, 6		#Sets the syscall code for reading a float
	syscall
	
	la 	$a0, output	#Loads starting address of output string to $a0
	li	$v0, 4		#Sets the syscall code for printing a string
	syscall
	
	mov.s 	$f12, $f0	#Moves the entered float in $f0 to $f12
	li	$v0, 2		#Sets the syscall code for printing a float
	syscall
	
.data
prompt:	.asciiz "Enter a non-integer number: "
output:	.asciiz "You entered "