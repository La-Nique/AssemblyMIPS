# invert bits 2 and 5 in s6 MIPS
# ...0000000000100100

addi $t1, $zero, 36 
# 2^2 + 2^5 = 36
xor $s6, $s6, $t1
