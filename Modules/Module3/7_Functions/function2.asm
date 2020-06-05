#Demonstrates a simple function with arguments and a return value
#Run and look at the $t2 register
.text
	li 	$t0, 5		#Loads 5 into $t0
	li 	$t1, 7		#Loads 7 into $t1
	move 	$a0, $t0	#Moves/copies $t0 to $a0
	move 	$a1, $t1	#Moves/copies $t1 to $a1
	jal 	func		#Jumps to the function, stores the next instruction to $ra
	move 	$t2, $v0	#Loads $v0 (the result of the function) into $t2
	j 	done

func:
	add 	$v0, $a0, $a1	#Adds the function's "arguments" and "returns" the result
	jr 	$ra		#Returns to instruction at $ra

done:
#Finished
