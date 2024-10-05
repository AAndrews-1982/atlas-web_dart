String longestUniqueSubstring(String str) {
  Map<String, int> lastSeen = {};
  int start = 0;
  int maxLength = 0;
  int startOfLongest = 0;

  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];

    // If the character was seen and is within the current window, update start
    if (lastSeen.containsKey(currentChar) && lastSeen[currentChar]! >= start) {
      start = lastSeen[currentChar]! + 1;
    }

    // Update the last seen index of the current character
    lastSeen[currentChar] = i;

    // Check if we found a longer substring
    if (i - start + 1 > maxLength) {
      maxLength = i - start + 1;
      startOfLongest = start;
    }
  }

  // Return the longest substring
  return str.substring(startOfLongest, startOfLongest + maxLength);
}

