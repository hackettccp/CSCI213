#Subtracts one value from another using a constant as an operand
#Run and look at the $t0 and $t2 registers

li 	$t0, 73		#Loads the constant 73 (0x49) to $t0 

subi 	$t2, $t0, 31	#$t2 = $t0 - 31
			#Result is 42 (0x2a)
