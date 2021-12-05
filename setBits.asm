# write function ADD that takes three numbers from a0, a1, a2 and returns their sum in v0. 
# You can modify only s-registers inside the function.

ADD:
  addi $sp $sp, -4
  sw $s0, 0($sp)

  add $s0, $a0, $a1
  add $v0, $s0, $a2
  
  lw $s0, 0($sp)
  addi $sp, $sp, 4
  
  jr $ra
