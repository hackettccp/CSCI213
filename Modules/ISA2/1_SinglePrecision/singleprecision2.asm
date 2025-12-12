#Demonstrates swapping single precision floating point numbers
.text
  	l.s 	$f0, float1	#Loads float1 into $f0
  	l.s 	$f1, float2	#Loads float2 into $f1
  	s.s	$f1, float1	#Stores $f1 to float1
  	s.s	$f0, float2	#Stores $f0 to float2

	l.s	$f12, float1	#Loads float1 to $f12.
 	li 	$v0, 2		#Sets the system call code for printing a float
  	syscall

.data
float1:	.float	32.45
float2: .float	7.89