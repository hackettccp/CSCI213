#Demonstrates reading a string
.text
	la	$a0, prompt	#Loads starting address of prompt string to $a0
	li	$v0, 4		#Sets the syscall code for printing a string
	syscall
	
	la	$a0, entry	#Loads starting address of entry to $a0
	li	$a1, 1001	#Maximum string length (in bytes)
	li	$v0, 8		#Sets the syscall code for reading a string
	syscall
	
	la 	$a0, output	#Loads starting address of output string to $a0
	li	$v0, 4		#Sets the syscall code for printing a string
	syscall
	
	la 	$a0, entry	#Loads starting address of entry string to $a0
	li	$v0, 4		#Sets the syscall code for printing a string
	syscall
	
.data
prompt:	.asciiz "Enter a string: "
output:	.asciiz "You entered "
entry:	.space	1001			#1001 bytes of space	