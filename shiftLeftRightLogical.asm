# shift left/right logical
# 
# C++ Code:
# int a{5}, b;
# b = a << 2; // b = a * 2 * 2 <-- Left Shift (2^a)
# b = a >> 1; // b = a/2 <-- Right Shift (/2^a)
# 
# overflow will ruin the integer, unless taken care of.

srl $t1, $t0, 2
sll $s0, $s5, 3

# take bit pattern of zeros and ones and shift this bit pattern x postion(s) to the left/right, and store the new value in ${destination}
# {direction} ${destination}, ${source}, {amount you'd like to shift by}
