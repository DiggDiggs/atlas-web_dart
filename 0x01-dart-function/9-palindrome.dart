bool isPalindrome(String s) {
  // Check if the string length is less than 3
  if (s.length < 3) {
    return false;
  }

  // Compare the string with its reverse
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}

void main() {
  print(isPalindrome("aa")); // Output: false
  print(isPalindrome("abcba")); // Output: true
  print(isPalindrome("abcde")); // Output: false
}
