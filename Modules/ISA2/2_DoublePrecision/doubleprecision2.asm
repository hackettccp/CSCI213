#Demonstrates swapping double precision floating point numbers
.text
  	l.d 	$f0, double1	#Loads double1 into $f0
  	l.d 	$f2, double2	#Loads double2 into $f2
  	s.d	$f2, double1	#Stores $f2 to double1
  	s.d	$f0, double2	#Stores $f0 to double2

	l.d	$f12, double1	#Loads double1 to $f12.
 	li 	$v0, 3		#Sets the system call code for printing a double
  	syscall

.data
double1: .double	178.345
double2: .double	323.67