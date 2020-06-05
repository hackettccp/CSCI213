#Demonstrates multiplication through repeated addition
#Run and look at $t2 register (remember the result displayed is in hex)
.text
	li 	$t0, 6		#Multiplier
  	li 	$t1, 9		#Multiplicand

  	li 	$t2, 0		#Accumulator
  	move 	$t3, $t0	#Copies the multiplier so the original value is not lost

multloop:
  	beq 	$t3, $0, done	#Multiplier copy has reached zero, exit
  	add 	$t2, $t2, $t1	#Add the multiplicand to the accumulator
  	subi 	$t3, $t3, 1	#Subtract 1 from the multiplier copy
  	j 	multloop	#Repeat

done:
  	move 	$a0, $t2	#Move the product to $a0
  	li 	$v0, 1		#Set system call code for printing an integer
  	syscall			#Print the integer
