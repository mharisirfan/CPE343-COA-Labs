# Title:  In Lab task 1                      Filename: task1.asm
# Author: Basim Abdullah Tariq               Reg No:   FA18-BCE-085
# Description: This code calcualtes marks of a student out of 100 by taking input of marks out of 25,10,15,50
#              using procedures
# Register Used: $t0, $t1, $t2, $t3, $t4, $ra, $v0, $a0
################# Data segment #####################

.data
array: .word 1 2 3 4 5 6 7 8 9 10
var1: .asciiz "\nHighest marks: "
var2: .asciiz "\nLowest marks: "
var3: .asciiz "\nAverage marks: "

################# Code segment #####################

.text
.globl main

main:
	li $t0, 0  # index
	li $t1, 10 # total members of an array
	li $t2, 0  # sum
	li $t3, 0  # average
	li $t4, 0  # highest
	li $t5, 9999 # lowest
	la $s0, array
	
loop:
	beq $t0, $t1, exitLoop
	 
	lw $t6, 0($s0) 
	
	bgt $t6, $t4, highest  
	bgt $t5, $t6, lowest
	
	addu $t2, $t2, $t6
	
	add $t0, $t0, 1
	addiu $s0, $s0, 4
	
	j loop
	
highest:
	jal maxfunc
	j loop
	
lowest:
        jal minfunc
	move $t5, $t6
	j loop
	
	
maxfunc:                        #func
move $t4,$t6 
jr $ra

minfunc:                           #function
move $t5,$t6 
jr $ra
exitLoop:

	div $t2, $t2, 10
	
	la $a0, var1
	li $v0, 4
	syscall
	
	move $a0, $t4
	li $v0, 1
	syscall
	
	la $a0, var2
	li $v0, 4
	syscall
	
	move $a0, $t5
	li $v0, 1
	syscall
	
	la $a0, var3
	li $v0, 4
	syscall
	
	move $a0, $t2
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
