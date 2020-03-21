#Adds two values together
#Run and look at the $t0, $t1, and $t2 registers

li $t0, 73		#Loads the constant 73 (0x49) to $t0 
li $t1, 31		#Loads the constant 31 (0x1f) to $t1

sub $t2, $t0, $t1	#$t2 = $t0 - $t1
			#Result is 42 (0x2a)
