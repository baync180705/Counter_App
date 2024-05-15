String decimalToBinary(int decimal) {
  if (decimal == 0) return '0';

  String binary = '';
  
  while (decimal > 0) {
    binary = (decimal % 2).toString() + binary;
    decimal ~/= 2;
  }
  
  return binary;
}

int binaryToDecimal(String binaryStr) {
  int decimalNumber = 0;
  int binaryLength = binaryStr.length;

  for (int i = 0; i < binaryLength; i++) {
    int binaryDigit = int.parse(binaryStr[binaryLength - 1 - i]);
    decimalNumber += binaryDigit * (1 << i); // (1 << i) is equivalent to 2^i
  }

  return decimalNumber;
}