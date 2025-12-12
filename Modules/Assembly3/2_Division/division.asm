#Demonstrates division with the div mnemonic
#Run and look at the hi (remainder) and lo (quotient) registers
.text
  	li 	$t0, 100	#Dividend
  	li 	$t1, 7		#Divisor

  	div 	$t0, $t1	#Divides $t0 by $t1 (Result is stored to hi and lo)

  	la 	$a0, quotient
  	li 	$v0, 4
  	syscall
  	mflo 	$a0		#Move the quotient to $a0
  	li 	$v0, 1
  	syscall
  	la 	$a0, remainder
  	li 	$v0, 4
  	syscall
  	mfhi 	$a0		#Move the remainder to $a0
 	li 	$v0, 1
  	syscall

.data
quotient:  .asciiz 	"Quotient is "
remainder: .asciiz 	"\nRemainder is: "
