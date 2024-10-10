class Password {
  String password = '';

  // Method to check if the password is valid
  bool isValid() {
    // Check the length of the password
    if (password.length < 8 || password.length > 16) {
      return false;
    }

    // Check for uppercase letters, lowercase letters, and numbers
    bool hasUpperCase = password.contains(RegExp(r'[A-Z]'));
    bool hasLowerCase = password.contains(RegExp(r'[a-z]'));
    bool hasDigits = password.contains(RegExp(r'[0-9]'));

    return hasUpperCase && hasLowerCase && hasDigits;
  }

  // Override toString method
  @override
  String toString() {
    return "Your Password is: $password";
  }
}

void main() {
  final ps = Password();

  ps.password = "Just3z";
  if (ps.isValid())
    print("${ps.password} is a Valid Password");
  else
    print("${ps.password} is Not a Valid Password");
  print("${ps.toString()}");

  ps.password = "ShouldWorkf7ne";
  if (ps.isValid())
    print("${ps.password} is a Valid Password");
  else
    print("${ps.password} is Not a Valid Password");
  print("${ps.toString()}");
}
