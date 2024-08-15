#Demonstrates swapping two values in main memory
#Run and look at the data in the Data Segment on the Execute tab
.text
  	lw	$t0, x		#Loads 7 (0x07) into $t0
  	lw	$t1, y		#Loads 4 (0x04)into $t1

  	sw	$t0, y		#Stores 7 to y
  	sw	$t1, x		#Stores 4 to x

.data
x:	.word	7
y:	.word	4
