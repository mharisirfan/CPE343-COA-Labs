#Title : Lab 1 Task 2.                                       Filename: Lab1Task2.asm
#Author: Muhammad Haris Irfan.                               Date: 15-09-20
#Roll Number: FA18-BCE-090                                   Description: Subtraction
#Registers: $t1, $t2, $t3,$t4,$t5, $v0, $a0
######################################## Data Segment  ############################################################
.data
 one: .word 
 two: .word 
 value: .word 
 
 string1 : .asciiz "Enter the total bill amount?"
 string2: .asciiz "Enter the amount payed by the customer?"
 
 string3: .asciiz "The amount to be returned is: "


################################################# Code Segment ######################################################
.text
main:

la $a0,string1                          #Load string1
li $v0,4                                #output string1

syscall

li $v0,5                                #input integer
syscall
move $t1,$v0                           #copy $vo to $t1

la $a0,string2                            #Load string1
li $v0,4                                  #output string1
syscall

li $v0,5                                #input integer
syscall
move $t2,$v0                              #copy $vo to $t1


    mul $t3, $t2, 80                     #multiply t2 with 80 and update t3
    div $t4, $t3, 100                    #divide t3 with 100 and update t4
    sub $t5, $t1, $t4                    #subtract t1 from t4 and update t5
    

la $a0,string3                       #Load string1
li $v0,4                             #output string1
syscall

li $v0,1                               #output integer
move $a0,$t5                        #copy $vo to $t1
syscall

li $v0,10                          #exit
syscall
