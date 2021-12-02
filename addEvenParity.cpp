//
//  addEvenParity.cpp
//  dimFunction
//
//  Created by Lanique on 12/1/21.
//

#include <iostream>

/*/
		Objective:
			Make 31st bit of data equal to 0 or 1 to ensure that the total number of 1’s in the binary representation of data is even.

		Rules:
		- The original value of data is guaranteed to have the bit 31 cleared.
		- Remember the rules of bit enumeration: “from right to left” and “starting from zero”.
		- To enable output like I did above, you got to #include<bitset>
		- 0b is the prefix that makes a binary literal. This prefix is available since C++14. If you want to use it, make sure you compile in C++14 standard. It can be done by selecting a corresponding option in your IDE or using -std=c++14 flag in command line (for gcc compiler like the one we have in the Linux lab).
		- Not allowed to use C++ bitset class in the function AddEvenParity or any helper functions called directly or indirectly from it. You can, however, use bitset in the function main for convenient printing in binary form
		
		* What you do in this assignment is encoding part of parity checking. It is a simple and common way of controlling data integrity. Since we aim for even number of 1’s, it is called even parity. The original 31 bits are the useful data, the added 32nd bit (bit number 31) is a parity bit, used to control data integrity. We can send all 32 bits (the whole integer) through the network, and if a single bit of the data is corrupted (in case of binary, “corrupted” means “inverted”) the even parity property will be broken, and receiver will know that the arrived data is damaged. For more information on the topic, see the “Parity Bit” article on Wikipedea.
/*/

void AddEvenParity(unsigned int &data)
{ // "Make 31st bit of data equal to 0 or 1 to ensure that the total number of 1’s in the binary representation of data is even."
int tracker = 0;
unsigned int thirtyFirstBit = 1;
		
	for(int i = 0; i <= 30; i++) // increment thru address to 0-30th bit.
	{
		if((data & thirtyFirstBit) != 0) // if (2^i & data !=0) then the current index's bit is 1. if 1 then...
			tracker++;
		
		thirtyFirstBit = thirtyFirstBit * 2; // 2^31 == 2'147'483'648
		// std::cout << thirtyFirstBit << "\n";
	}
	
	if(tracker % 2 == 1) // if odd...
		data = (data | thirtyFirstBit); // then we set 31st bit to 1 using "or" operation.
}


int main()
{ // examples given by instructor:
unsigned int useful = 0b1011;
AddEvenParity(useful);
std::cout<< std::bitset<32>(useful) <<std::endl;
		// the output should be 10000000000000000000000000001011 . Pay attention to the leftmost digit 1. It was added by AddEvenParity to make the number of 1’s even (in this case, 4).

unsigned int useful_aswell = 0b11011;
AddEvenParity(useful_aswell);
std::cout<< std::bitset<32>(useful_aswell) <<std::endl;
		// the output should be 00000000000000000000000000011011 . The leftmost digit is 0 since the number of 1’s was even from the very start.

return 0;
}
