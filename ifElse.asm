# Convert C++ code into MIPS instructions:

# if (a > 123)
#   a++;
# else
#   a--;

addi $t3, $zero, 123
slt $t7, $t3, $s6
#is 123 < a ? store 0 or 1 into t7.
beq $t7, $zero, ELSE
#if t7 is false, go to else
addi $s6, $s6, 1
# a++;
j END

ELSE:
addi $s6, $s6, -1
# a--;

END:
