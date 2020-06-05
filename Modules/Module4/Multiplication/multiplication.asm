#Demonstrates multiplication with the mult mnemonic
#Run and look at the hi and lo registers
#(Data will only be in lo because the product is a small number
.text
	li 	$t0, 5		#Multiplier
  	li 	$t1, 8		#Multiplicand

  	mult 	$t0, $t1	#Multiplies $t0 and $t1 (Result is stored to hi and lo)

  	mflo 	$a0		#Move the product's lower order bits to $a0
  	li 	$v0, 1		#Set system call code for printing an integer
  	syscall			#Print the integer