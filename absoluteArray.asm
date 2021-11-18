# We have the following array:
# int  nums[1000];
# 
# Write a piece of MIPS code that scans the whole array and replaces each negative element by its absolute value.
# The address of the nums array is stored in the register $s5. If you want to alter the address value during the program execution, you can.
# The only branch instructions you are allowed to use are BEQ & BNE, you will also need comparison instructions like slt & slti.

# my thought process:
# int nums[1000]
# for loop
# replace each negative value by its absolute... example pusedocode: if(nums<0) nums = 0-nums;
# address of nums --> $s5

addi $s0, $zero, 1000
# s0 = 1000 , array size.
addi $s2, $zero, 0
#s2 = i , counter
lw $t2, 0($s5)
# t2 = address of first array index.

START:
# loop begins.

  beq $s2, $s0, QUIT
  # if i == 1000 --> go to quit label.
  
  # <loop body begins>
  
  slti $t0, $t2, 0
  # is nums[i] < 0 ?
  bne $t0, $zero, ABSOLUTE
  # if t0! = false (0) / if t0 = true (1) --> go to absolute label.
  
  # </loop body ends>
  
  lw $t2, 4($t2)
  # int nums[i++]
  addi $s2, $s2, 1
  # i++;
  j START
  #repeat loop
  
    ABSOLUTE:
    # absolute value function begins.
    
      sub $t3, $t2, $t2
      # t3 = t2 - t2 , 0
      sub $t3, $t3, $t2
      # t3 = 0 - t2 , (0-nums[i])
      sw $t3, 0($t2)
      # store modified value in address.
      lw $t2, 4($t2)
      # int nums[i++]
      addi $s2, $s2, 1
      # i++;
      j START
      #go back to initial loop

QUIT:
# loop end, array manipulation complete.
      
      
