#Title : Lab 2 Task 1.                                       Filename: Lab2Task1.asm
#Author: Muhammad Haris Irfan.                               Date: 22-09-20
#Roll Number: FA18-BCE-090                                   Description: Total marks
#Registers: $t1, $t2, $t3,$t4,$t5,$t6,$t7, $v0, $a0
######################################## Data Segment  ############################################################
.data
msg1: .asciiz "Enter marks out of 25 (Q/A): "
msg2: .asciiz "Enter the marks out of 10 (Sessional 1): "
msg3: .asciiz "Enter the marks out of 15 (Sessional 2): "
msg4: .asciiz "Enter the marks out of 50 (Terminal): "
msg5: .asciiz "Result : "


################################################# Code Segment ######################################################

.text
main:

la $a0,msg1                                          #Load msg1
li $v0,4                                             #output msg1

syscall

li $v0,5                                                  #input integer
syscall
move $t1,$v0                                            #copy $vo to $t1

la $a0,msg2                                         #Load msg2
li $v0,4                                             #output msg2
syscall

li $v0,5                                                 #input integer
syscall
move $t2,$v0                                          #copy $vo to $t1

la $a0,msg3                                        #Load msg3
li $v0,4                                            #output msg3

syscall

li $v0,5                                                #input integer
syscall
move $t3,$v0                                       #copy $vo to $t1

la $a0,msg4                                       #Load msg4
li $v0,4                                          #output msg4
syscall

li $v0,5                                            #input integer
syscall 
move $t4,$v0                                      #copy $vo to $t1

add $t7,$t1,$t2                                 #add
add $t7,$t7,$t3                                 #add 
add $t7,$t7,$t4                                  #add

la $a0,msg5                                         #Load msg5
li $v0,4                                            #output msg5
syscall

li $v0,1                                               #input integer
move $a0,$t7                                         #copy $vo to $t1
syscall

li $v0,10
syscall
