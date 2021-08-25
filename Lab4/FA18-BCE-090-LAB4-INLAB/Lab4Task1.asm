#Title : Lab 4 Task 1.                                       Filename: Lab4Task1.asm
#Author: Muhammad Haris Irfan.                               Date: 06-10-20
#Roll Number: FA18-BCE-090                                   Description: Maximum, Minimum and Average
#Registers: $t1, $t2, $t3,$t4, $t5, $v0, $a0
######################################## Data Segment  ############################################################
.data

Array: .word  45 98 99 100 120 123 127



msg1: .asciiz "Maximum Marks:"

msg2: .asciiz "\nMinimum Marks:"

msg3: .asciiz "\nAverage Marks:"


################################################# Code Segment ######################################################

.text
main:

 li $t0,0                #i
 li $t1,7                #n
 li $t2,0                #total for avg
 li $t3,9999             #for minimum
 li $t4,0               #maximum
 
 la $s0,Array            #array add loaded in S0

goup:

  beq $t0,$t1, Code             #loop iteration
  
  
  lw $t5, 0($s0)                ##value loaded in $t5
  bgt $t5,$t4, maxloop          #to check if t5 is greater then t4, then update t4
  m:
  bgt $t3,$t5, minloop         #to check if t3 is greater then t5, then update t3
  n:
  addu $t2,$t2,$t5                    ## total for avg     
  
  addiu $t0, $t0,1                 #incrementing i
  addiu $s0,$s0,4                 #incrementing array 
  
      j goup
 
 
Code:                   
 la $a0,msg1             #loaing msg 1                  
 li $v0,4                #printing string
 syscall  
 move $a0,$t4
 li $v0,1                   #printing t4
 syscall

 la $a0,msg2                 #loading msg 2
 li $v0,4                      #printing msg2
 syscall
 move $a0,$t3
 li $v0,1                      #printing t3
 syscall

 la $a0,msg3                   #loading msg 3
 li $v0,4                    #printing msg 3
 syscall

 DIV $t2,$t2,7              #dividing total marks by 7 for avg
 

 move $a0,$t2
 li $v0,1                         #printing t2
 syscall

 j Exit

maxloop:                #loop for total marks
jal maxfunc                      
 j m

 minloop:              #loop for min marks
 jal minfunc
 j n


maxfunc:                        #func
move $t4,$t5 
jr $ra

minfunc:                           #function
move $t3,$t5 
jr $ra


Exit:                        #exit 
 li $v0,10
 syscall