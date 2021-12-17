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
add $s1, $a0, $zero
#s1 = a0
add $s1, $a0, $zero
#s1 = a0

add $s5, $zero, $zero

j MYMUL
# this function will place multiplication of a0 and a1 within s5, $s5 = a0 * a1

j EXIT

EXIT:

add $v0, $s5, $zero
