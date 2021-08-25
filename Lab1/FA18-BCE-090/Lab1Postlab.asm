#Title : Lab 1 PostLab.                                       Filename: Lab1PostLab.asm
#Author: Muhammad Haris Irfan.                               Date: 19-09-20
#Roll Number: FA18-BCE-090                                   Description: Pythagorus Th.
#Registers: $t1, $t2, $t3,$t4,$t5,$t6, $v0, $a0
######################################## Data Segment  ############################################################
.data
msg1: .asciiz "Enter the value of hypotenuse? "
msg2: .asciiz "The Value of Perpendicular is : "
msg3: .asciiz "\nThe Value of Base is : "

################################################# Code Segment ######################################################

.text


la $a0,msg1                                          #Load msg1
li $v0,4                                             #output msg1

syscall

li $v0,5                                                  #input integer
syscall
move $t1,$v0                                            #copy $vo to $t1



li $t2,5                                              #put 5 to $t2
DIV $t3,$t1,$t2                                        #divide hyp by t2
MUL $t4, $t3,4                                         #mul t3 by 4


la $a0,msg2                                         #Load msg2
li $v0,4                                           #print msg2
syscall

move $a0, $t4                                       #move t4 to a0
li $v0, 1                                           #print t4
syscall


la $a0,msg3                                        #Load msg3
li $v0,4                                           #print msg3
syscall

MUL $t5, $t4,3                                    #multiply t4 by 3
DIV $t6, $t5,4                                    #divide t5 by 4

move $a0, $t6                                    #move t6 to a0
li  $v0,1                                        #print integer 
syscall

li $v0,10                          #exit
syscall









