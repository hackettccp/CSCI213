#Demonstrates explicit addressing
#Run and look at the $t0, $t1, $t2, $t3 registers
.text
	la	$t0, x		#Loads the address of word into $t0
  	lw	$t1, 0($t0)	#Loads 7 into $t1
  	lw	$t2, 4($t0)	#Loads 9 into $t2
  	lw	$t3, 8($t0)	#Loads 11 into $t3

.data
x:	.word	7, 9, 11
