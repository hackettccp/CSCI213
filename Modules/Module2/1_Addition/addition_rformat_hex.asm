#Adds two values together
#Run and look at the $t0, $t1, and $t2 registers

li $t0, 0x2d		#Loads the constant 0x2d (45) to $t0 
li $t1, 0x4f		#Loads the constant 0x4f (79) to $t1

add $t2, $t0, $t1	#$t2 = $t0 + $t1
			#Result is 0x7c (124)