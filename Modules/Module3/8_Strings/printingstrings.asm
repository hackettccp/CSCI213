#Demonstrates printing a string
.text
	la	 $a0, example	#Loads (symbolically) the example string's starting address to $a0
	la 	$t0, example2	#Loads (symbolically) the example2 string's starting address to $t0
	li 	$v0, 4		#Sets the system call code for printing a string 
	syscall			#4 is in $v0, so the string (starting at the address in $a0) is printed

	move 	$a0, $t0	#Moves the example2 string's starting address from $t0 to $a0
	syscall			#4 is in $v0, so the string (starting at the address in $a0) is printed

.data
example:  .asciiz	"Hello World!\n"
example2: .asciiz	"Goodbye World!"
