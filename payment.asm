# Write in MIPS a function PAYMENT:
# PAYMENT takes a number of hours (integer) from $a0 and hourly rate (integer) from $a1. 
# PAYMENT returns the amount of money earned in $v0.

# Function PAYMENT must use function MYMUL for multiplication. 
# The function MYMUL takes integers from $a2 and $a3 and returns in $v1 their product. 
# You don’t have to implement MYMUL, you just have to use it in your code. You have no idea how MYMUL is implemented. 
# For you, it is just a correct MIPS function that does multiplication as specified.

# Function PAYMENT should follow all MIPS function calling conventions.

# $a0 <--- number of hours (integer)
# $a1 <--- hourly rate (integer)
# PAYMENT function takes both parameters and returns the amount of money earned in $v0.
# Imaginary use MYMUL function (it multiples both parameters together)

# let $a0 and $a1 have its values.

jal PAYMENT

PAYMENT:
  addi $sp, $sp, -4
  sw $ra, 0($sp)
  # store address to stack

  add $a6, $a0, $zero
  # a6 = a0
  add $a7, $a1, $zero
  # a7 = a1

  add $s5, $zero, $zero

  jal MYMUL
  # let MYMUL function place multiplication of parameters a0 and a1 within s5; $s5 = a0 * a1

  lw $ra, 0($sp)
  addi $sp, $sp, 4
  # restore stack pointer

j EXIT

EXIT:

  add $v0, $s5, $zero
  jr $ra
