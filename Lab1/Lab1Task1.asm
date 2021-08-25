#Title : Lab 1 Task 1.                                       Filename: Lab1Task1.asm
#Author: Muhammad Haris Irfan.                               Date: 15-09-20
#Roll Number: FA18-BCE-090                                   Description: Subtraction
#Registers: $t1, $t2, $t3, $v0, $a0
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

la $a0,string1                                #Load string1
li $v0,4                                      #output string1

syscall                                                

li $v0,5                                      #input integer
syscall
move $t1,$v0                                  #copy $vo to $t1

la $a0,string2                                 #Load string1
li $v0,4                                       #output string1
syscall

li $v0,5                                        #input integer
syscall
move $t2,$v0                                     #copy $vo to $t1

Sub $t3,$t1,$t2                                 #subtracting t1 from t2 and saving result in t3

la $a0,string3                                       #load string3
li $v0,4                                             #output string3
syscall

li $v0,1                                            #output integer
move $a0,$t3                                        #copy t3 to a0
syscall

li $v0,10                                         #exit
syscall
