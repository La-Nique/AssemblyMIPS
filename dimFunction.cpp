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
  unsigned int modifiedRGB = 0;
  // unsigned int extra;
  unsigned int R;
  unsigned int G;
  unsigned int B;
  
  
  return modifiedRGB;
}
