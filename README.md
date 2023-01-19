# Assembly Language (MIPS)
###### all programs written by Lanique Peterson

### :+: Repo Overview :+:

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
| whileLoop | while-loop implementation with incrementation | jumps and labels |
| switchStatement | switch statement implementation | " |
| invertBits | invert specific bits within an address | boolean xor command |
| ifElse | C++ if (...) else (...) converison into MIPS instructions | branch jumps |
| clear5 | clears specific bit within an address | boolean and command |
| fibonnaciRecurisonMethod | fibonnaci algorithm with recurison  | recurison, stack pointer, jump/link && jump/return |
| addFunction | adding three values and returning address into specific register | allocating memory and stack pointer |
| cyclesPerInstruction<i>.txt</i> | cycles per instruction comparison | CPI |
| setBits | setting specific bits within 32-bit memory addresses | boolean and and or commands |
| functionMIN | compares values stored within two register and returns the smallest number into a different register. | standard MIPS function calling conventions |
| countCaps | within our given input string, how many captial letters are there? | ASCII and lb and standard MIPS function calling conventions |
| payment | multiply two reigsters within a function by calling a multiplication function and returning the output value into a different reigster | allocating memory on the stack with stack pointer manipulation |

###### all rights reserved
