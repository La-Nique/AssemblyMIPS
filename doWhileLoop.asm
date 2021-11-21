# do
# {
#   var- = 20; // var unsigned int in address s3.
# }
# while(var > 100);

lw $t0, 0($s3)
# load var value in t0
addi $t7, $zero, 100
# t7 = 100

LOOP:
  addi $t0, $t0, -20
  # var- = 20
  sltu $t5, $t7, $t0
  # is 100 < var? 0 (false) | 1 (true)?
  bne $t5, $zero, LOOP
  # if t5 != 0 --> go to LOOP
  sw $t0, 0($s3)
  #store modified value back in var
