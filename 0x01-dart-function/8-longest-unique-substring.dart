String longestUniqueSubstring(String str) {
  int maxLength = 0;
  String longestSubstring = "";
  int start = 0;
  Map<String, int> charIndexMap = {};

  for (int end = 0; end < str.length; end++) {
    String currentChar = str[end];

    // If the character is already in the map, move the start pointer
    if (charIndexMap.containsKey(currentChar) &&
        charIndexMap[currentChar]! >= start) {
      start = charIndexMap[currentChar]! + 1;
    }

    // Update the index of the character in the map
    charIndexMap[currentChar] = end;

    // Calculate the length of the current substring
    int currentLength = end - start + 1;

    // Update the longest substring if the current one is longer
    if (currentLength > maxLength) {
      maxLength = currentLength;
      longestSubstring = str.substring(start, end + 1);
    }
  }

  return longestSubstring;
}

void main() {
  print(longestUniqueSubstring("abcacbd")); // Output: acbd
  print(longestUniqueSubstring("aaaaaaaa")); // Output: a
  print(longestUniqueSubstring("abcde")); // Output: abcde
}
