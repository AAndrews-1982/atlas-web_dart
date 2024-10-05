class Password {
  String? password;

  // Method to check if the password is valid
  bool isValid() {
    if (password == null || password!.length < 8 || password!.length > 16) {
      return false;
    }

    // Check if the password contains uppercase, lowercase, and numbers
    bool hasUppercase = password!.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = password!.contains(RegExp(r'[a-z]'));
    bool hasNumbers = password!.contains(RegExp(r'[0-9]'));

    return hasUppercase && hasLowercase && hasNumbers;
  }

  // Override the toString method
  @override
  String toString() {
    return 'Your Password is: $password';
  }
}

