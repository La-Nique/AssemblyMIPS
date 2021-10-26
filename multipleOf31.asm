add $s7, $s0, $s0
#s7 = s0 + s0; let us assume s0 holds the integer value of 1 within it's memory address, we add 1 + 1 into register s7, which is also s0 * 2.
add $s7, $s7, $s7
#s7 = s7 + s7; 2 + 2 = 4
add $s7, $s7, $s7
#s7 = s7 + s7; 4 + 4 = 8
add $s7, $s7, $s7
#s7 = s7 + s7; 8 + 8 = 16
add $s7, $s7, $s7
#s7 = s7 + s7; 16 + 16 = 32
sub $s7, $s7, $s0
#s7 = s7 - s1; 32 - 1 = 31, reigster s7 now stores the value of s0 multipled by 31.
