#Finds the length of a string
.text
	la 	$t0, example	#Loads (symbolically) the example string's starting address to $t0
	li 	$t1, 0		#$t1 will be used as the counter

length:
	lbu 	$t2, 0($t0)	#Load the first byte from the address in $t0
	beq 	$t2, $0, done	#Check if we reached the null byte
	addi 	$t1, $t1, 1	#Increment the counter
	addi 	$t0, $t0, 1	#Advance to the next byte
	j 	length

done:
	la 	$a0, text	#Loads (symbolically) the text string's starting address to $a0
	li 	$v0, 4		#Sets the system call code for printing an string 
	syscall			#4 is in $v0, so the string in $a0 is printed

	move 	$a0, $t1	#Move the counter value ($t1) to $a0
	li 	$v0, 1		#Sets the system call code for printing an integer 
	syscall			#1 is in $v0, so the integer in $a0 is printed
	
.data
text:  	 .asciiz	"The string's length is: "
example: .asciiz	"Hello World!"
