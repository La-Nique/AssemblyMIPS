# Write in MIPS a function COUNT_CAPS that takes from $a3 the address of the null-terminated string of ASCI characters and returns in $v1 the number of capital letters in that string.
# Your function should follow MIPS function rules (a.k.a. function calling conventions).
# Hint: Null-termination character ‘\0’ has an ASCI code of 0.
# 
# Here is a piece of code that you can include ABOVE YOU COUNT_CAPS FUNCTION to test your program. The code was tested on MARS. It should display the answer in the terminal window. The answer for the string "StrINg" used in code is 3.
# 
# --------------------
# 
# .data   
#
#    msg:  .asciiz   "StrINg"
# 
# .text   
# 
#    la  $a3, msg   
# 
#    jal  COUNT_CAPS   
# 
#    add $a0, $v1, $zero   
# 
#    addi $v0, $zero, 1   
# 
#    syscall   
# 
#    addi  $v0, $zero, 10   
# 
#    syscall
