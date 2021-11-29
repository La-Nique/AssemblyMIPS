//
//  main.cpp
//  dimFunction
//
//  Created by Lanique Peterson on 11/23/21.
//

#include <iostream>
using namespace std;

/*
		32-bit variable RGB: Extra / Red / Green / Blue <-- each store 8-bits each. 'Extra' would have values to modifiy the transparency and other color properties.
 
		Instructions:
		Write a C++ function... unsigned int Dim(unsigned int originalColor, int dimRatio);
		The Dim function takes originalColor and reduces red, green and blue components in it "dimRatio" times.
		Return the resulting color.
 
		Rules && Tips:
		'Extra' component of the color should not change.
		Use integer division.
		Not allowed to use C++ bitset class.
		dimRatio is guaranteed to be greater than zero.
 
		int main() example:
			{
				unsigned  original = 0x010AFF09;
				unsigned  dimed = Dim(original, 3); (unsigned int originalColor (original), int dimRatio (3))
 
				std::cout << std::hex << dimed; // should display a value 0x01035503
			}
 
		Explanation of Dim(unsigned int, int) example:
 
		Extra component was 0x01 in original and remain unchanged in dimed.
		Red component was 0x09 in original and became 0x03 in dimed. // divided by dimRatio (3).
		Green component was 0xFF in original and became 0x55 in dimed. // 255 (0xFF) / 3 (dimRatio) = 85 (0x55)
		Blue component was 0x0A in original and became 0x03 in dimed (integer division gives 10/3 = 3).
 
		Components must be dealt with separately.
		You cannot just divide the whole originalColor by dimRatio.
 */

unsigned int Dim(unsigned int originalColor, int dimRatio)
{
		// creation of masks for extra/blue/green/red bit values...order given in photo reference
	unsigned int rMask = 0x000000FF;
	unsigned int gMask = 0x0000FF00;
	unsigned int bMask = 0x00FF0000;
	unsigned int eMask = 0xFF000000;
	
		// manipulate value data for each byte...
	unsigned int r = (originalColor & rMask) / dimRatio; // unset unnessacary bits to 0 and needed to 1 then divide.
	unsigned int g = ((originalColor & gMask) >> 8) / dimRatio; // right shift
	unsigned int b = ((originalColor & bMask) >> 16) / dimRatio;
	unsigned int e = originalColor & eMask; // leave alone as per instructions.
	
		// placing bits back && combining values...
	unsigned int modifiedRGB = e;
	modifiedRGB = modifiedRGB | (b << 16); // left shift
	modifiedRGB = modifiedRGB | (g << 8);
	modifiedRGB = modifiedRGB | r;
	
		//volia.
	return modifiedRGB;
}


int main() {
		// example given by professor:
	unsigned  original = 0x010AFF09;
	unsigned  dimed = Dim(original, 3);
	
	std::cout << std::hex << dimed << std::endl; // should display a value 0x01035503
}
