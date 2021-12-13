# Write in MIPS a function COUNT_CAPS that takes from $a3 the address of the null-terminated string of ASCI characters and returns in $v1 the number of capital letters in that string.
# Your function should follow MIPS function rules (a.k.a. function calling conventions).
# Hint: Null-termination character ‘\0’ has an ASCI code of 0.

# Problem broken down:
# $a3 the address of ---> Null-termination character == ‘\0’
# Function COUNT_CAPS
# return number of capital letters in input string in --> $v1

.data

   msg:  .asciiz   "HLOOeyT"

.text

   la  $a3, msg

   jal  COUNT_CAPS

   add $a0, $v1, $zero

   addi $v0, $zero, 1

   syscall

   addi  $v0, $zero, 10

   syscall
   
COUNT_CAPS:
	addi $v1, $zero, 0
	# v1 = captial letter counter 

	NOT_EMPTY:
        lb $a0, 0($a3) 
        # a0 = first char
        addi $a3, $a3, 1
        # index increment
        beq $a0, $zero, EXIT
        # if string is empty
        bne $a0, $zero, IF_CAPITAL

		IF_CAPITAL:
          		slti $s7, $a0, 91
      			# $a3 < 91 ?
      
      			addi $s5, $zero, 64
      			slt $s6, $s5, $a0
      			# is $s5 (64) < a3 ?
      
      		beq $s6, $s7, COUNT
      		# if 1 = 1 --> Label
      		addi $s0, $s0, 1
        	# counter++;
      	
      		j NOT_EMPTY
    
      COUNT:
            addi $v1,$v1,1
            j NOT_EMPTY
              
  EXIT:
    jr $ra
