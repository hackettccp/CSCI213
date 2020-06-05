#Demonstrates a decision structure
#Run and look at the $t2, $t3 and $t4 registers
.text
	li 	$t0, 9			#Loads 9 into $t0
	li 	$t1, 9			#Loads 9 into $t1
	bgt 	$t0, $t1, path1
	blt 	$t0, $t1, path2
	addi 	$t4, $t4, 1		#Adds 1 to $t4
	j 	done

path1:
	addi 	$t2, $t2, 1		#Adds 1 to $t2
	j 	done

path2:
	addi 	$t3, $t3, 1		#Adds 1 to $t3

done:
#Finished
