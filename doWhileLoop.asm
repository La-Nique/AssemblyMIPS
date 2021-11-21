# do
# {
#   var-=20; // var unsigned int in address s3.
# }
# while(var>100);

lw $t0, 0($s3)
# load var value in t0

START:
  addi $t0, $t0, -20
  # var- = 20
  addi $t7, $zero, 100
  # t7 = 100
  sltu $t5, $t7, $t0
  # is 100 < var? 0 | 1?
  bne $t5, $zero, START
  # if t5 != false --> go to START
  sw $t0, 0($s3)
  #store modified value back in var
