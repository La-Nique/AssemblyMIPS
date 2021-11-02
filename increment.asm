# A++;
# // A is an integer and its address is stored in s7
# Convert to MIPS instruction

lw $s0, 0($s7) 
# lw - load word ; $s0 is our destination register ; 0($s7) address in RAM that is zero bytes away from '()' address [new address = old address + 0 bytes away].
add $s0, $s0, 1 
# s0 = s0 + 1 ; '++' increment instruction.
sw $s0, 0($s7) 
# sw - store word ; $s0 - store register ; @ 0($s7) address in RAM memory.
