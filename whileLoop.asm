# Convert C++ into MIPS code:
# 
# int i = 0;
# while(i < 10){
#   i++;
# }

add $s0, $zero, $zero
addi $s1, $zero, 10

LOOP:
slt $t0, $s0, $s1
beq $t0, $zero, END
addi $s0, $s0, 1
j LOOP

END:
