#Demonstrates single precision floating point numbers
.text
  	l.s 	$f0, float1	#Loads float1 into $f0
  	l.s 	$f1, float2	#Loads float2 into $f1

	add.s	$f2, $f0, $f1	#Adds $f0 and $f1. Stores the result to $f2
	
	mov.s	$f12, $f2	#Moves $f2 to $f12 for printing
 	li 	$v0, 2		#Sets the system call code for printing a float
  	syscall

.data
float1:	.float	32.45
float2: .float	7.89