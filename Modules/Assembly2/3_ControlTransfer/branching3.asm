#Demonstrates conditional transfer
#Run and look at the $t3 and $t4 registers
.text
  	li	$t0, 11			#Loads 11 into $t0
  	li	$t1, 9			#Loads 9 into $t1
  	beq	$t0, $t1, test1		#Go to test1 if $t0 == $t1
  	blt	$t0, $t1, test2		#Go to test2 if $t0 < $t1

test1:
  	li 	$t3, 8			#Loads 8 into $t3

test2:
  	li 	$t4, 10			#Loads 10 into $t4
