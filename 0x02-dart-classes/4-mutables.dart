class Password {
  String _password;

  Password({required String password}) : _password = password;

  // Getter for password
  String get password => _password;

  // Setter for password
  set password(String password) {
    _password = password;
  }

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }
    bool hasUpperCase = _password.contains(RegExp(r'[A-Z]'));
    bool hasLowerCase = _password.contains(RegExp(r'[a-z]'));
    bool hasDigits = _password.contains(RegExp(r'\d'));

    return hasUpperCase && hasLowerCase && hasDigits;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
