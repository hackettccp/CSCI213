#Demonstrates double precision floating point numbers
.text
  	l.d 	$f0, double1	#Loads double1 into $f0 (and $f1)
  	l.d 	$f2, double2	#Loads double2 into $f2 (and $f3)

	add.d	$f4, $f0, $f2	#Adds $f0 (and $f1) with $f2 (and $f3). Stores the result to $f4 (and $f5)
	
	mov.d	$f12, $f4	#Moves $f4 (and $f5) to $f12 (and $f13) for printing
 	li 	$v0, 3		#Sets the system call code for printing a double
  	syscall

.data
double1: .double	178.345
double2: .double	323.67