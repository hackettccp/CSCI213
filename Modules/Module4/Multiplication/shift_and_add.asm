#Demonstrates multiplication using shift-and-add
.text
  	li 	$t0, 15		#Multiplier
  	li 	$t1, 83		#Multiplicand

  	li 	$t2, 0		#Accumulator
  	move 	$t3, $t0	#Copies the multiplier so the original value is not lost
  	move 	$t4, $t1	#Copies the multiplicand so the original value is not lost

multloop:
  	ble 	$t3, $0, done	#Multiplier copy has reached zero, exit
  	andi 	$t5, $t3, 1	#Tests the low-order bit (if $t5 is 1, then the number is odd)
  	beq 	$t5, $0, even	#Multiplier is even
  	add 	$t2, $t2, $t4	#Add the multiplicand to the accumulator

even:
  	sll 	$t4, $t4, 1	#Left shift the the multiplier copy by 1
  	srl 	$t3, $t3, 1	#Right shift the the multiplicand copy by 1
  	j 	multloop	#Repeat

done:
  	move 	$a0, $t2	#Move the product to $a0
  	li 	$v0, 1		#Set system call code for printing an integer
  	syscall			#Print the integer
