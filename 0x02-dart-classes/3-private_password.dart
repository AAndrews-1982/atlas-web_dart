class Password {
  // Private property _password
  String _password;

  // Constructor with named parameter to initialize _password
  Password({required String password}) : _password = password;

  // Getter to access the private _password property (optional)
  String get password => _password;

  // Method to check if the password is valid
  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    // Check if the password contains uppercase, lowercase, and numbers
    bool hasUppercase = _password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = _password.contains(RegExp(r'[a-z]'));
    bool hasNumbers = _password.contains(RegExp(r'[0-9]'));

    return hasUppercase && hasLowercase && hasNumbers;
  }

  // Override the toString method
  @override
  String toString() {
    return 'Your Password is $_password';
  }
}

