#Performs logical operations
#Run and look at the $t0, $t1, $t2, $t3, $t4, $t5 registers

li 	$t0, 0xad	#Loads the constant 0xad (10101101) to $t0 
li 	$t1, 0x1e	#Loads the constant 0x1e (00011110) to $t1

and 	$t2, $t0, $t1	#$t2 = $t0 AND $t1
# $t0 = 10101101
# $t1 = 00011110
# $t2 = 00001100 = 0x0c

or 	$t3, $t0, $t1	#$t3 = $t0 OR $t1
# $t0 = 10101101
# $t1 = 00011110
# $t3 = 10111111 = 0xbf

xor 	$t4, $t0, $t1	#$t4 = $t0 XOR $t1
# $t0 = 10101101
# $t1 = 00011110
# $t4 = 10110011 = 0xb3

not 	$t5, $t0	#$t5 = NOT $t0
# $t0 = ...0000 10101101
# $t5 = ...1111 01010010 = 0x...ff52

