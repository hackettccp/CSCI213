#Demonstrates a memory array
#Run and look at the $t1, $t2, $t3, and $t4 registers
.text
	la 	$t0, array		#Loads the starting address of array
	lw 	$t1, 0($t0)		#Loads 35 to $t1
	lw 	$t2, 4($t0)		#Loads 67 to $t2
	lw 	$t3, 8($t0)		#Loads 42 to $t3
	lw 	$t4, 12($t0)		#Loads -6 to $t4

.data
array: .word	35, 67, 42, -6
