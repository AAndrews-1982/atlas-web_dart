class Password {
  String? _password;

  Password({String? password}) : _password = password;

  // Getter for password
  String? get password => _password;

  // Setter for password
  set password(String? value) {
    _password = value;
  }

  // Method to check if the password is valid
  bool isValid() {
    if (_password == null || _password!.length < 8 || _password!.length > 16) {
      return false;
    }

    bool hasUppercase = _password!.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = _password!.contains(RegExp(r'[a-z]'));
    bool hasNumbers = _password!.contains(RegExp(r'[0-9]'));

    return hasUppercase && hasLowercase && hasNumbers;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}

