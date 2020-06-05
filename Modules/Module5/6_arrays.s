#Demonstrates a memory array
#Run and look at the data segment to 
#see that the array values were reversed
.text
main:
	#Load the starting address of array to t0
	lui 	t1, %hi(.array)
	addi 	t1, t1, %lo(.array)

	lw 	t2, 0(t1)		#Loads 35 to t2
	lw 	t3, 4(t1)		#Loads 67 to t3
	lw 	t4, 8(t1)		#Loads 42 to t4
	lw 	t5, 12(t1)		#Loads -6 to t5
	
	sw 	t5, 0(t1)		#Stores -6 to 0(t1)
	sw 	t4, 4(t1)		#Stores 42 to 4(t1)
	sw 	t3, 8(t1)		#Stores 67 to 8(t1)
	sw 	t2, 12(t1)		#Stores 35 to 12(t1)

	#Print index 0
	lw 	a0, 0(t1)
	li	t0, 1
	ecall

	#Print index 1
	lw 	a0, 4(t1)
	ecall

	#Print index 2
	lw 	a0, 8(t1)
	ecall

	#Print index 3
	lw 	a0, 12(t1)
	ecall


.data
.array: 
       .word	35
       .word	67
       .word	42
       .word	-6
