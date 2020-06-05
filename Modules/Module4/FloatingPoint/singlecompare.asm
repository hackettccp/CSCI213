#Demonstrates comparing single precision floating point numbers
.text
  	l.s 	$f0, float1	#Loads float1 into $f0
  	l.s 	$f1, float2	#Loads float2 into $f1
  	c.eq.s	$f0, $f1	#Compares $f0 (float1) == $f1 (float2)
  	bc1t 	equal		#Branch to equal if condition code is true (1)
  	bc1f 	notequal	#Branch to notequal if condition code is false (0)

equal:
	la	$a0, output1	#Loads the starting address of output1 string to $a0
	li 	$v0, 4		#Sets the system call code for printing a string
  	syscall
  	j	done

notequal:
	la	$a0, output2	#Loads the starting address of output2 string to $a0
	li 	$v0, 4		#Sets the system call code for printing a string
  	syscall

done:
#Finished

.data
float1:	 .float		32.45
float2:  .float		7.89
output1: .asciiz	"float1 == float2"
output2: .asciiz	"float1 != float2"