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

addi $s6, $zero, 0xF000
# s6 == 0xF000 ; smartOne's object address.
lhu $s2, 4($s6)
# s2 == unsigned short int smartOne's mAge address.
addi $s2, $s2, 1
# s2 = smartOne.mAge++;
sh $s2, 4($s6)
# store modified value into address.
lh $s4, 6($s6)
# s4 == "regular" short int smartOne's mCreditsEarned address.
addi $s4, $s4, 3
# s3+=3 ; mCreditsEarned += 3;
sh $s4, 6($s6)
# store modified value into address.

# my thought process:
# place 0x 0000 0F00 into a register, s6
# load a register, s2, with address in s6, offset by 4 bytes to access mAge and bypass mID
# increment mAge by 1 ; smartOne.mAge++;
# store modified value into smartOne.mAge's address
# load a register, s4, with address in s6, offset by 6 bytes to access smartOne.mCreditsEarned and bypass mID && mAge
# add three to value in address ; smartOne.mCreditsEarned = smartOne.mCreditsEarned + 3; == smartOne.mCreditsEarned+=3;
# store modified value into smartOne.mCreditsEarned's address
