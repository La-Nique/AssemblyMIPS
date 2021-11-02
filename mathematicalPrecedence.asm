# A = A + (7-4)
# // A is an integer value and its value is stored in s7.
# Converted into MIPS instruction

# for my thought process only:
# psuedocode:
# (7-4) handle first
# s7 = A (already placed)
# t0 = 7
# t5 = 7-4
# s7 = s7 + t5

addi $t0, $zero, 7
addi #t5, $t0, -4
add $s7, $s7, $t5

