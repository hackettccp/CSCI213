#Adds two values together using a constant as an operand
#Run and look at the $t0 and $t2 registers

li $t0, 45		#Loads the constant 45 (0x2d) to $t0 

addi $t2, $t0, 79	#$t2 = $t0 + 79
			#Result is 124 (0x7c)
