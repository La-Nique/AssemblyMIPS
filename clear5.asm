# Write a MIPS function CLEAR5 that clears bit number 5 in register a0

CLEAR5:
addi $t6, $zero, -33 # var &= -33;
and $a0, $a0, $t6

jr $ra

# end result:
# 1111111111111111111111110111111
