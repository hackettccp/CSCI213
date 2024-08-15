#Demonstrates a repetitive structure
#Run and look at the t0 and t1 registers
.text
main:
	li 	t0, 0			#Loads 0 into t0
	li 	t1, 1			#Acts as a counter
	li 	t2, 5			#Used to stop the loop

loop:
	bgt 	t1, t2, done
	add 	t0, t0, t1		#Adds t1 to t0
	addi 	t1, t1, 1		#Adds 1 to t1
	j 	loop

done:
#Finished
