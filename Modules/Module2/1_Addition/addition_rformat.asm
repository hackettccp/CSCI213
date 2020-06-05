#Adds two values together
#Run and look at the $t0, $t1, and $t2 registers

li 	$t0, 45		#Loads the constant 45 (0x2d) to $t0 
li	$t1, 79		#Loads the constant 79 (0x4f) to $t1

add 	$t2, $t0, $t1	#$t2 = $t0 + $t1
			#Result is 124 (0x7c)
