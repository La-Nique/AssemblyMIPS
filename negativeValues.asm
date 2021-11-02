# var = (1 – var) + (var + 2)
# The value of var is already in $s6 register. After all the computations are finished, a new value of var should also be in $s6.

# my thought process:
# psuedocode:
# var = (1 – var) + (var + 2) actually means,
# var = (-var + 1) + (var + 2)
# must make var negative so that it cancels out at the end and you're left with var = 3.

sub $s7, $s6, $s6
# s7 = var = 0
sub $s7, $s6, $s6
# s7 = -var
addi $s8, $s7, 1
#s8 = 1-s7 ; (var - 1)
addi $s9, s6, 2
#s9 = s6+2 ; (var + 2)
add $s6, $s8, $s9
#s6 = s8 + s9
