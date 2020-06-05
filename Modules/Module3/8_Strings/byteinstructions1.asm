#Demonstrates the lbu byte instruction
.text
	la 	$a0, example	#Loads (symbolically) the example string's starting address to $a0
	la 	$t0, example2	#Loads (symbolically) the example2 string's starting address to $t0

	lbu 	$t1, 0($t0)	#Loads G (ASCII hex code 47) to $t1
	lbu 	$t2, 6($a0)	#Loads W (ASCII hex code 57) to $t2
	lbu 	$t3, example	#Loads H (ASCII hex code 48) to $t3

.data
example:  .asciiz	"Hello World!\n"
example2: .asciiz	"Goodbye World!"
