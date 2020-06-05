#Demonstrates loading data from main memory to a register
#Run and check registers $t0, $t1, $t2
#Also look at the data in the Data Segment on the Execute tab
.text
	lw	$t0, x		#Loads 7 (0x07) into $t0
	lw	$t1, z		#Loads 9 (0x09)into $t1
	lw	$t2, z+8	#Loads 0xff (255) into $t2

.data
x: 	.word	7
y: 	.word	-1
z: 	.word	9, 10, 0xff
   	.word	11
