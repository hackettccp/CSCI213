#Demonstrates comparing double precision floating point numbers
.text
  	l.d 	$f0, double1	#Loads double1 into $f0
  	l.d 	$f2, double2	#Loads double2 into $f2
  	c.le.d	$f0, $f2	#Compares $f0 (double1) <= $f2 (double2)
  	bc1t 	lessthanorequal	#Branch to lessthanorequal if condition code is true (1)
  	bc1f 	greaterthan	#Branch to greaterthan if condition code is false (0)

lessthanorequal:
	la	$a0, output1	#Loads the starting address of output1 string to $a0
	li 	$v0, 4		#Sets the system call code for printing a string
  	syscall
  	j	done

greaterthan:
	la	$a0, output2	#Loads the starting address of output2 string to $a0
	li 	$v0, 4		#Sets the system call code for printing a string
  	syscall

done:
#Finished

.data
double1: .double	178.345
double2: .double	323.67
output1: .asciiz	"double1 <= double2"
output2: .asciiz	"double1 > double2"