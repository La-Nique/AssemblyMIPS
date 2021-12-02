# Assembly Language (MIPS)

###### Computer Architecture II
###### all files written by Lanique Peterson

### Overview

A collection of various MIPS instructions and programs I've written with extensive notes. Foundational code reviewing and experimentation.

#### Synopsis of each file:

| Name of File | Description | Specialities |
| ----------- | ----------- |----------- |
| mulitpleof31 | destination register copies value stored within another register, then is multiplied by thirty-one. | restricted to add, addi, and sub functions |
| mulitpleof24 | num = num * 24 ; the value of num is already in t4 register ; after all the computations are finished, a new value of num should also be in $t4 | restricted to add, addi, and sub functions |
| increment | the incrementing command '++' | use memory address stored in a register ; lw & sw | 
| mathematicalPrecedence | mathematical order of operations without simplification | "creating" a register with $zero |
| negativeValues | mathematical precedence without simplification  | initial value cancels out |
| forLoop | for loop implementation with conditionals  | jumps and branches |
| smartStudent | loading, modifying, and storing data in offset addresses  | unsigned ints & shorts and offset lw by bytes |
| absoluteArray | traverse through an array and replace negative integers by its absolute value | for loops, comparisons, boolean expressions, if-statements, creating functions |
| doWhileLoop | most optimal implementation of a do-while loop | looping |
| shiftLeftRightLogical | bitwise conversions in both cpp code and assembly | 32-bit address shifting |
| dimFunction<i>.cpp</i> | takes the address of a color (RGB) and dims it by a percentage |  modifying and combining bits |
| addEvenParity<i>.cpp</i>| Make 31st bit of data equal to 0 or 1 to ensure that the total number of 1’s in the binary representation of data is even. | bit modification |

###### all rights reserved
