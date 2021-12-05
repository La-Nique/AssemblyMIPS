# Convert following C++ code into MIPS instructions:
# 
# switch(a){ // a is in s6
#   case 4: 
#     a++;
#     break;
#   case 7:
#     a--;
#     break;
#   default:
#     a* = 2;
#   }

addi $t0, $zero, 4 
#t0 = 4

bne $t0, $s6, LABEL_7 
# if t0 not equal to s6 then jump to LABEL 7.

addi $s6, $s6, 1
# a++
j END

LABEL_7:
  addi $t0, $zero, 7
  #t0 = 4
  bne $t0, $s6, LABEL_DEFAULT
  addi $s6, $s6, -1
  # a--
  j END

LABEL_DEFAULT:
  sll $s6, $s6, 1
  # a * = 2

END:
