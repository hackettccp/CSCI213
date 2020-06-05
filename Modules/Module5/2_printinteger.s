#Demonstrates printing an integer
#Integer to print must be in register a0
#1 must be in register t0
.text
main:
	li 	t1, 45		#Loads the constant 45 (0x2d) to t1 
	li 	t2, 79		#Loads the constant 79 (0x4f) to t2

	mv 	a0, t1		#Copies t1 to a0
	li 	t0, 1		#Sets the system call code for printing an integer
	ecall			#1 is in t0, so the integer in a0 is printed

	mv 	a0, t2		#Copies t2 to a0
	ecall			#1 is in t0, so the integer in a0 is printed

	#Output of this program is: 
	#45
	#79