String longestUniqueSubstring(String str) {
  int n = str.length;
  int maxLength = 0;
  String longestSubstring = "";
  Map<String, int> seenChars = {};

  int start = 0;
  for (int end = 0; end < n; end++) {
    String currentChar = str[end];

    if (seenChars.containsKey(currentChar) && seenChars[currentChar]! >= start) {
      start = seenChars[currentChar]! + 1;
    }

    seenChars[currentChar] = end;
    int currentLength = end - start + 1;

    if (currentLength > maxLength) {
      maxLength = currentLength;
      longestSubstring = str.substring(start, end + 1);
    }
  }

  return longestSubstring;
}
