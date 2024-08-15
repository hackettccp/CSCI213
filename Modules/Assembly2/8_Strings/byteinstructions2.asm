#Demonstrates the sb byte instruction
.text
	la 	$a0, example	#Loads (symbolically) the example string's starting address to $a0
	la 	$t0, example2	#Loads (symbolically) the example2 string's starting address to $t0

	li 	$t1, 0x4a	#Loads 4a (ASCII hex code for J) to $t1		
	sb 	$t1, example	#Stores 4a (J) to the first byte (lower 8 bits) in example
	li 	$v0, 4		#Sets the system call code for printing a string 
	syscall			#4 is in $v0, so the string (starting at the address in $a0) is printed

	li 	$t1, 0x42	#Loads 42 (ASCII hex code for B) to $t1		
	sb 	$t1, 4($t0)	#Stores 42 (B) to the 5th byte, beginning at the address in $t0 (example2)
	la 	$a0, example2	#Loads (symbolically) the example2 string's starting address to $a0
	syscall			#4 is in $v0, so the string (starting at the address in $a0) is printed		

.data
example:  .asciiz	"Hello World!\n"
example2: .asciiz	"Goodbye World!"
