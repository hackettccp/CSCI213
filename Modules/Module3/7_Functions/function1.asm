#Demonstrates a simple function
.text
	li 	$t0, 5		#Loads 5 into $t0
	jal 	func		#Jumps to the function, stores the next instruction to $ra
	li 	$t2, 3		#Loads 3 into $t2
	j 	done

func:
	li 	$t1, 7		#Loads 7 into $t1
	jr $ra			#Returns to instruction at $ra

done:
#Finished
