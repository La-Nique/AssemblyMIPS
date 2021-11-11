# You have the following C++ class

# class Student
# {
# public:
#     unsigned int  mID; <-- 4
#     unsigned short  mAge; <-- 2
#     short  mCreditsEarned; <-- 2
# }

# The following object of this class is created:
# Student  smartOne;

# Write a piece of MIPS code that implements the following C++ statements:
# smartOne.mAge++;
# smartOne.mCreditsEarned += 3;

# The following is known:
#     object smartOne is located at the address 0x0000 0F00
#     object smartOne has no "padding" and aliasing in it. The data members are stored in the order in which they are declared (mID, then mAge, then mCreditsEarned).

# my thought process:
# place 0x0000 0F00 into a register
# load s2 with address 4 bytes away
# modify value

addi $s6, $zero, 0xF00
