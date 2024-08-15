#Demonstrates reading a double
.text
	la	$a0, prompt	#Loads starting address of prompt string to $a0
	li	$v0, 4		#Sets the syscall code for printing a string
	syscall
	
	li	$v0, 7		#Sets the syscall code for reading a double
	syscall
	
	la 	$a0, output	#Loads starting address of output string to $a0
	li	$v0, 4		#Sets the syscall code for printing a string
	syscall
	
	mov.d 	$f12, $f0	#Moves the entered double in $f0 (and $f1) to $f12 (and $f13)
	li	$v0, 3		#Sets the syscall code for printing a double
	syscall
	
.data
prompt:	.asciiz "Enter a non-integer number: "
output:	.asciiz "You entered "