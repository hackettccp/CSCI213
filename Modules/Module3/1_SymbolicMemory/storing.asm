#Demonstrates storing data from registers to main memory
#Run and look at the data in the Data Segment on the Execute tab
.text
	li	$t0, 7		#Loads 7 (0x07) into $t0
  	li	$t1, 9		#Loads 9 (0x09)into $t1
  	li	$t2, 10		#Loads 10 (0x0a) into $t2

	sw	$t0, x		#Stores 7 to x
  	sw	$t1, y		#Stores 9 to y
  	sw	$t2, z		#Stores 10 to z

.data
x:	.word	0
y:	.word	0
z:	.word	0
