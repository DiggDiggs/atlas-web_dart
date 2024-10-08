bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}

String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }

  String longestPal = "none";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 3; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring)) {
        if (longestPal == "none" || substring.length > longestPal.length) {
          longestPal = substring;
        }
      }
    }
  }

  return longestPal;
}

void main() {
  print(longestPalindrome("abcde")); // Output: none
  print(longestPalindrome("azeghjhg")); // Output: ghjhg
  print(longestPalindrome("aaabvf")); // Output: aaa
}
