#Title : Lab 3 Task 2.                                       Filename: Lab3Task2.asm
#Author: Muhammad Haris Irfan.                               Date: 29-09-20
#Roll Number: FA18-BCE-090                                   Description: Total marks using procedures
#Registers: $t1, $t2, $t3,$t4,$t5,$t6,$t7, $v0, $a0
######################################## Data Segment  ############################################################
.data
msg1: .asciiz "Enter marks out of 25 (Q/A):"
msg2: .asciiz "Enter the marks out of 10 (Sessional 1): "
msg3: .asciiz "Enter the marks out of 15 (Sessional 2): "
msg4: .asciiz "Enter the marks out of 50 (Terminal): "
msg5: .asciiz "Result : "


################################################# Code Segment ######################################################

.text
main:

la $a0,msg1                                          #Load msg1
jal get_marks
move $t1,$v0                                            #copy $vo to $t1

la $a0,msg2                                         #Load msg2
jal get_marks
move $t2,$v0                                          #copy $vo to $t1

la $a0,msg3                                        #Load msg3
jal get_marks
move $t3,$v0                                       #copy $vo to $t1

la $a0,msg4                                       #Load msg4
jal get_marks
move $t4,$v0                                      #copy $vo to $t1

la $a0,msg5                                         #Load msg5

jal calculate_sum
jal exit

display_string:               ####### display string                       minor procedure
li $v0,4
syscall 
jr $ra
 
get_input:                  ############get input                        minor procedure
li $v0,5
syscall
jr $ra




get_marks:                 #################   get marks              MAIN Procedeure
addi $sp,$sp,-4
sw $ra,0($sp)

jal display_string
jal get_input

lw $ra,0($sp)
addi $sp,$sp,+4
jr $ra

calculate_sum:             ##################calculate sum                Main procedure

add $t7,$t1,$t2                                 #add
add $t7,$t7,$t3                                 #add 
add $t7,$t7,$t4                                  #add

move $a0,$t7                                         #copy $vo to $t1
li $v0, 1
syscall
jr $ra



exit:
li $v0,10
syscall
