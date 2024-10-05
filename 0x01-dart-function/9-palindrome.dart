bool isPalindrome(String s) {
  // If the string is less than 3 characters, it's not considered a palindrome
  if (s.length < 3) {
    return false;
  }

  // Compare the string with its reversed version
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}

