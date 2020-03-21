#Storing 75000 to $t0

#75000 = 0000 0000 0000 0001 0010 0100 1111 1000 = 0x000124f8

lui $t0, 0x0001		#$t0 = 0000 0000 0000 0001 0000 0000 0000 0000
ori $t0, 0x24f8		#$t0 = 0000 0000 0000 0001 0010 0100 1111 1000


#Note: The instruction
#li $t0, 75000
#is valid, but will be converted into the two instructions shown above

