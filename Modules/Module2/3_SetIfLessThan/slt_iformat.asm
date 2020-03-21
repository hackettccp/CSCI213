#Sets the lesser of two values to a register
#Run and look at the $t0, $t1, $t2, and $t3 registers

li $t0, 73		#Loads the constant 73 (0x49) to $t0 
li $t1, 31		#Loads the constant 31 (0x1f) to $t1

slti $t2, $t0, 15	#$t2 = $t0 < 15 ? 1 : 0
			#Result is 0 (0x00)
			
slti $t3, $t1, 65	#$t3 = $t1 < 65 ? 1 : 0
			#Result is 1 (0x01)
