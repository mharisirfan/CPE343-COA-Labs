#Title : Lab2Postlab.                                       Filename: Postlab Lab2.asm
#Author: Muhammad Haris Irfan.                               Date: 26-09-20
#Roll Number: FA18-BCE-090                                   Description: Two syscalls in the loop
#Registers: $t1, $t2, $t3,$t4, $v0, $a0
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
	
li $t1, 0 # temp var counter for loop 

li $t2, 4 # exit condition 
li $t4,0
##############################loop#######################
Loop: 
  beq $t1,0, first
  beq $t1,1, second
  beq $t1,2, third
  beq $t1,3, fourth
first:
   la $a0,msg1  #load 
   j here
second:
  la $a0,msg2  #load 
  j here
third:
   la $a0,msg3  #load 
   j here
fourth:
   la $a0,msg4  #load 
   j here
 
 here: 
   li $v0,4    #output
   syscall
 
 
   li $v0,5               #read integer 
   syscall
   move $t3, $v0
   add $t4, $t3, $t4          #adding total 
  
    
    add $t1, $t1, 1 #increment counter 
   
    
 bne $t2, $t1, Loop               #if t1 is not equal to t2 then goto loop
 #######################################loop end##########################
    
 la $a0,msg5  #load 
   li $v0,4 
   syscall   #output
  
  li $v0,1 #integer output
 move $a0,$t4
 syscall

    li $v0,10 #loads the service that exits 
    syscall