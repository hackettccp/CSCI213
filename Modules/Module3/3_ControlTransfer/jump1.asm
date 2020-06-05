#Demonstrates unconditional transfer
.text
  	li	$t0, 7		#Loads 7 into $t0
  	j	test2		#Jumps to test2 section

test1:
  	li	$t2, 8		#Loads 8 into $t2
  	j	done		#Jumps to done section

test2:
  	li 	$t1, 10		#Loads 10 into $t1
  	j 	test1		#Jumps to test1 section

done:
  	li 	$t3, 9		#Loads 10 into $t1
