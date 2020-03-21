#Adds two values together using a constant as an operand
#Run and look at the $t0 and $t2 registers

li $t0, 0x2d		#Loads the constant 0x2d (45) to $t0 

addi $t2, $t0, 0x4f	#$t2 = $t0 + 79
			#Result is 0x7c (124)
