# Create a function MIN that takes two numbers from a0 and a1. The smallest number gets returned into v0.

# Given values:

addi $a0, $zero, 6      # a0 = 6
addi $a1, $zero, 11     # a1 = 11

jal MIN                 # jump to function MIN.

# Our function begins: (jal is not needed when creating a function, only jr)

MIN:                    # parameters in reigster a0 + a1 ; return smallest value to v0. $a are aurgment registers.
  slt $t0, $a0, $a1     # t0 = is a0 < a1 ? // is a0 smaller than a1?
  bne $t0, $zero, NOT   # if a0 < a1 is true (1) --> go to NOT label
  add $v0, $zero, $a1   # if false (0), store the value of a1 into v0; a1 holds the smallest value.
  jr $ra                # return to program code. exit function.
   
  NOT:
    add $v0, $zero, $a0   # store the value of a0 into v0; a0 holds the smallest value.
    jr $ra                # exit function.
