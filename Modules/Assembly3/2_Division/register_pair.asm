#Demonstrates shifting a register pair
.text
  	li 	$t0, 0x00000000	#The left register
  	li 	$t1, 0xffffffff	#The right register

  	sll 	$t0, $t0, 1	#Left Shift the left register 1 bit
  	bge 	$t1, $0, notOne	#If high-order bit of right register is a 1, skip next instruction
  	addi 	$t0, $t0, 1	#Add 1 to the left register
notOne:
  	sll 	$t1, $t1, 1	#Left Shift the right register 1 bit
