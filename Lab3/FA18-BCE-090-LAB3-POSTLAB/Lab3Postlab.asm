#Title : Lab 4 Task 1.                                       Filename: Lab4Task1.asm
#Author: Muhammad Haris Irfan.                               Date: 06-10-20
#Roll Number: FA18-BCE-090                                   Description: 
#Registers: $t1, $t2, $t3,$t4, $v0, $a0
######################################## Data Segment  ############################################################
.data

.data

rollNo:.space 200
marks:.space 200
prompt:.asciiz "\nPlease enter number of students:"
rollNoMSg:.asciiz "Please enter roll number: "
markMSg: .asciiz "Please enter marks: "
searchMsg: .asciiz "\nPlease enter roll number to get "

##mark: "
marklsMSg:.asciiz "\nMarks of student is:"
notFound: .asciiz "\nID not found!"
.globl main
############################## Code Segment########################################################
.text

main:

li $v0,4
la $a0,prompt #it will print prompt
syscall
li $v0,5
syscall #ask user input
move $s0,$v0 #save a to t1
la $a3,rollNo
la $a2,marks
li $t0,0 #index

loop:
mul $t1,$t0,4 #get index of i
add $t2,$t1,$a3 #get index of rollNI]
add $t3,$t1,$a2 #get index of marksli]
li $v0,4
la $a0,rollNoMSg #it will print prompt
syscall
li $v0,5

syscall
sw $v0,($t2) #save rolINumber
li $v0,4
la $a0,markMSg #it will print prompt
syscall
li $v0,5
syscall
sw $v0,($t3) #save marks
addi $t0,$t0,1 #i++
blt $t0,$s0 loop

while:

li $v0,4
la $a0,searchMsg #it will print prompt
syscall
li $v0,5
syscall
beq $v0,9999,Exit
li $t0,0 #index

loopSearch:
mul $t1,$t0,4 #get index of i
add $t2,$t1,$a3 #get index of array

Lw $t2,($t2) #get value of arrayll
beq $t2,$v0,found
addi $t0,$t0,1 #i++
blt $t0,$s0 loopSearch
li $v0,4
la $a0,notFound #it will print prompt
syscall
j while

found:
add $t2,$t1,$a2 #get index of array[il
lw $t2,($t2) #get value of array[i]
li $v0,4
la $a0,marklsMSg #it will print prompt
syscall
li $v0,1
move $a0,$t2
syscall
j while
Exit:
li $v0,10