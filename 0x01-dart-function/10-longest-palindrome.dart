import '9-palindrome.dart'; // Reuse the isPalindrome() function

String longestPalindrome(String s) {
  String longest = "";

  // Check all possible substrings of length 3 or more
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 3; j <= s.length; j++) {
      String substring = s.substring(i, j);

      if (isPalindrome(substring) && substring.length > longest.length) {
        longest = substring;
      }
    }
  }

  // Return "none" if no palindrome was found
  return longest.isEmpty ? "none" : longest;
}

