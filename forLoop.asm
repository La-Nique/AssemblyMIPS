# for(int i = 0; i!=10; i++){
#     a++;
# }
# convert C++ code into MIPS instructions...

# for loop thought process...
# 1.) create integer variable i and assign the value to zero
# 2.) see if the condition, i!=10, is true | false
# 3.) if the condition is true, execute the instruction within the loop
# 4.) then increment i by one, i++

addi $s7, $zero, 0
# s7 = (int i = 0)
addi $t6, $zero, 10
# t6 = 10 , needed to create for our MIPS comparison conditional.

START_LOOP:
  BEQ $s7, $t6, QUIT_LOOP
  # if s7 (int i) == 10, then execute QUIT LOOP label instructions.
  # branch.
  # BEQ : if two registers are equal, then jump to label.
  # BNE : if two registers are not equal, then jump to label.
  
  # <loop body instructions begin>
  
  addi $s0, $s0, 1
  # a++; , a is stored within reigster s0 and value is incremented by 1.
  
  # </loop body instructions end>
  
  addi $s7, $s7, 1
  # i++; , s7 (int i) is incremented by 1.
  
  j START_LOOP 
  # jumps to START LOOP label instructions.
  
QUIT_LOOP:
# ...exited.

#
# without comments:
#

addi $s7, $zero, 0
addi $t6, $zero, 10

START_LOOP:
  BEQ $s7, $t6, QUIT_LOOP
  
  # <loop body instructions begin>
  
  addi $s0, $s0, 1
  
  # </loop body instructions end>
  
  addi $s7, $s7, 1
  
  j START_LOOP 
  
  
QUIT_LOOP:
