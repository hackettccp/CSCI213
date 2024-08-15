#Demonstrates a memory array
#Run and look at the data segment to 
#see that the array values were reversed
.text
	la 	$t0, array		#Loads the starting address of array
	lw 	$t1, 0($t0)		#Loads 35 to $t1
	lw 	$t2, 4($t0)		#Loads 67 to $t2
	lw 	$t3, 8($t0)		#Loads 42 to $t3
	lw 	$t4, 12($t0)		#Loads -6 to $t4
	sw 	$t4, 0($t0)		#Stores -6 to 0($t0)
	sw 	$t3, 4($t0)		#Stores 42 to 4($t0)
	sw 	$t2, 8($t0)		#Stores 67 to 8($t0)
	sw 	$t1, 12($t0)		#Stores 35 to 12($t0)

.data
array: .word	35, 67, 42, -6
