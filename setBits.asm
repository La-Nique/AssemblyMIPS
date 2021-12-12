# setting, clearing, inverting 
#    // set = 1, cleared = 0

# Instructions: s0 holds value. Go to L1 if bit number 2 is set. 
#   // bit is set means if bit is equal to 1. 

#   // how long is the whole value in register s0? 32-bits.

# Rules for emumeration: 
#   from right to left, leftmost is least significant.
#   numeration starts from zero, from right to left. <--

# How to set and clear bits...

addi $t0, $zero, 4  # we create a mask -- bit 2; 
and $t1, $s0, $t0   # applying the mask to s0 (the original value)
bne $t1, $t5, L1    # if t1 doesn't contain 0, go to L1



# better to just use 'or' operation...



# Create a MIPS program that has a value stored in s0 and set the bits number 4 and 6.

addi $t0, $zero, 0x50     # create a mask. 0x50 also can write, ' addi $t0, $zero, 80 ' (80 = 2^4 + 2^6) in decimal.
or #s0, $s0, $t0          # apply the mask.
