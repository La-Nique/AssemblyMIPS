Fib:
   addi  $t0, $zero, 1       # t0=1
   beq  $a0, $t0, RET_1  # is index==1 ?
   addi  $t0, $zero, 2       # t0=2
   beq  $a0, $t0, RET_1  # is index==2 ?
   j   RECUR

   RET_1:

      addi  $v0, $zero, 1   # this and next instructions implement return 1
      jr  $ra


RECUR:

    addi  $t7, $a0, -2      # t7 = index – 2

    addi  $sp, $sp, -8      # allocate 8 bytes on stack

    sw  $ra, 4($sp)         # store return address on stack

    sw  $t7, 0($sp)         # store t7 on stack

 

   addi  $a0, $a0, -1      # a0 = index -1

   jal  Fib                # Fib(index-1)

   lw  $t7, 0($sp)         # t7 is restored

   addi  $t5, $v0, 0       # t5=Fib(index-1)

   sw  $t5, 0($sp)         # store t5 on stack

   add $a0, $zero, $t7     # a0=index-2 

   jal  Fib

   lw  $t5, 0($sp)         # restore t5

   add  $v0, $v0, $t5      # Fib(index-1)+Fib(index-2)

   lw  $ra, 4($sp)         # restoring return address 

   addi  $sp, $sp, 8       # restoring the stack

   jr  $ra                 # returning from the function
