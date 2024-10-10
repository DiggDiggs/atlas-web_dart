class Password {
  // Private property for password
  String _password;

  // Constructor to initialize the password
  Password({required String password}) : _password = password;

  // Getter for the password
  String get password => _password;

  // Setter for the password
  set password(String newPassword) {
    _password = newPassword;
  }

  // Method to check if the password is valid
  bool isValid() {
    // Check the length of the password
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    // Check for uppercase letters, lowercase letters, and numbers
    bool hasUpperCase = _password.contains(RegExp(r'[A-Z]'));
    bool hasLowerCase = _password.contains(RegExp(r'[a-z]'));
    bool hasDigits = _password.contains(RegExp(r'[0-9]'));

    return hasUpperCase && hasLowerCase && hasDigits;
  }

  // Override toString method
  @override
  String toString() {
    return "Your Password is: $_password";
  }
}

void main() {
  final password = Password(password: "Passwordecode");
  print(password.isValid());
  print(password.toString());

  password.password = "Youssef4321"; // Using the setter
  print(password.isValid());
  print(password.toString());
}
