#Demonstrates move operations
#Run and look at the $t0, $t1, $t2, and $t3 registers

li $t0, 45		#Loads the constant 45 (0x2d) to $t0 
li $t1, 79		#Loads the constant 79 (0x4f) to $t1

move $t2, $t1		#Copies $t1 to $t2

move $t3, $t0		#Copies $t0 to $t3
