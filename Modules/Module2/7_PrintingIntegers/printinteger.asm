#Demonstrates printing an integer
#Integer to print must be in register $a0
#1 must be in register $v0

li 	$t0, 45		#Loads the constant 45 (0x2d) to $t0 
li 	$t1, 79		#Loads the constant 79 (0x4f) to $t1

move 	$a0, $t0	#Copies $t0 to $a0
li 	$v0, 1		#Sets the system call code for printing an integer
syscall			#1 is in $v0, so the integer in $a0 is printed

move 	$a0, $t1	#Copies $t1 to $a0
#No need to set the system call code again; It is already set to 1 for printing an integer
syscall			#1 is in $v0, so the integer in $a0 is printed

#Output of this program is: 4579