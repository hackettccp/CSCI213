#Demonstrates reading an integer
.text
	la	$a0, prompt	#Loads starting address of prompt string to $a0
	li	$v0, 4		#Sets the syscall code for printing a string
	syscall
	
	li	$v0, 5		#Sets the syscall code for reading an integer
	syscall
	
	move	$t0, $v0	#Moves the entered integer to $t0
	
	la 	$a0, output	#Loads starting address of output string to $a0
	li	$v0, 4		#Sets the syscall code for printing a string
	syscall
	
	move 	$a0, $t0	#Moves the integer in $t0 back to $a0
	li	$v0, 1		#Sets the syscall code for printing an integer
	syscall
	
.data
prompt:	.asciiz "Enter an integer: "
output:	.asciiz "You entered "