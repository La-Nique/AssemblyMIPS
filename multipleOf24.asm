add $t5, $t4, $t4
# t5 = t4+t4 = 2
add $t5, $t5, $t5
# t5 = t5+t5 = 4

add $t6, $t4, $t4
# t6 = t4+t4
add $t6, $t6, $t6
# t6 = t6+t6 = 4

add $t4, $t4, $t4
# t4 = t4+t4
add $t4, $t4, $t4
# t4 = t4+t4
add $t4, $t4, $t4
# t4 = t4+t4
add $t4, $t4, $t4
# t4 = t4+t4 = 16

add $t4, $t4, $t5
#t4 = t4 + t5 = 20
add $t4, $t4, $t6
#t4 = t4 + t6 = 24
