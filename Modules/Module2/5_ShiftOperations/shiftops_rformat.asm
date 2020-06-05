#Performs shift operations
#Run and look at the $t0, $t1, $t2, $t3, $t4, $t5 registers

li 	$t0, 0xad	#Loads the constant 0xad (10101101) to $t0 

#Logical Shift inserts 0's

sll 	$t1, $t0, 3	#$t1 = $t0 << 3
# $t0 = 0000 ... 0000 1010 1101
# $t1 = 0000 ... 0101 0110 1000 = 0x568

srl 	$t2, $t0, 3	#$t2 = $t0 >> 3
# $t0 = ...0000 1010 1101
# $t2 = ...0000 0001 0101 = 0x15

li 	$t3, -23	#Loads the constant -23 (0xffffffe9) to $t0


#Arithmetic Shift inserts 1's for negative numbers

sra 	$t4, $t3, 3	#$t4 = $t3 >> 3
# $t0 = 1111 ... 1111 1110 1001
# $t3 = 1111 ... 1111 1111 1101 = 0xfffffffd

srl 	$t5, $t3, 3	#$t4 = $t3 >> 3
# $t0 = 1111 ... 1111 1110 1001
# $t5 = 0001 ... 1111 1111 1101 = 0x1ffffffd
