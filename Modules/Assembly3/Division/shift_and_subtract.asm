#Demonstrates division using the shift-and-subtract algorithm
#100 / 7 = 14 (0xe) with a remainder of 2
.text
  	li 	$t0, 100		#Dividend
  	li 	$t1, 7			#Divisor

  	li 	$t2, 0			#Quotient
  	li 	$t3, 0			#Remainder
  	li 	$t5, 32			#Loop Counter

divide_loop:
  	beq  	$t5, $0, done		#Stops the loop
  	sll  	$t2, $t2, 1		#Left Shift the quotient 1 bit
  	sll  	$t3, $t3, 1		#Left Shift the remainder 1 bit
  	bge  	$t0, $0, notOne		#If high-order bit of dividend is a 1, skip next instruction
  	addi 	$t3, $t3, 1		#Add 1 to the remainder

notOne:
  	sll 	$t0, $t0, 1		#Left Shift the dividend 1 bit
  	blt 	$t3, $t1, noSub		#Divisor is less than the remainder (skip ahead)
  	sub 	$t3, $t3, $t1		#Subtract the divisor from the remainder
  	addi 	$t2, $t2, 1		#Add 1 to the quotient

noSub:
  	subi 	$t5, $t5, 1		#Subtract one from the counter
  	j 	divide_loop		#Begin the loop again

done:
  	la 	$a0, quotient
  	li 	$v0, 4
  	syscall
  	move 	$a0, $t2
  	li 	$v0, 1
  	syscall
  	la 	$a0, remainder
  	li 	$v0, 4
  	syscall
  	move 	$a0, $t3
  	li 	$v0, 1
  	syscall
  
.data
quotient:  .asciiz 	"Quotient is "
remainder: .asciiz 	"\nRemainder is: "
