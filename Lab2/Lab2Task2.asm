#Title : Lab 2 Task 2.                                       Filename: Lab2Task2.asm
#Author: Muhammad Haris Irfan.                               Date: 22-09-20
#Roll Number: FA18-BCE-090                                   Description: Marks in Loop
#Registers: $t0, $t1, $t2, $t3, $v0, $a0
######################################## Data Segment  ############################################################
.data
msg1: .asciiz "Enter marks: "

msg2: .asciiz "Result : "


################################################# Code Segment ######################################################

.text
main:



li $t0,4
li $t1,0          ##used for comparison.. counter
li $t2,0          ## will contain final value



###################   LOOP   #####################################


label:

la $a0,msg1                                          #Load msg1
li $v0,4                                             #output msg1
syscall

li $v0,5                                                  #input integer
syscall
move $t3,$v0                                            #copy $vo to $t1

ADD $t2,$t2,$t3               ##update final value

ADD $t1,$t1,1                   ##update counter

bne $t1,$t0,label

la $a0,msg2
li $v0,4
syscall

move $a0, $t2
li $v0,1
syscall

li $v0,10                            #exit
syscall
