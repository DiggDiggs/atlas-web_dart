class Password {
  String _password;

  Password({required String password}) : _password = password;

  bool isValid() {
    return _password.length >= 8 &&
        _password.length <= 16 &&
        _password.contains(RegExp(r'[A-Z]')) &&
        _password.contains(RegExp(r'[a-z]')) &&
        _password.contains(RegExp(r'[0-9]'));
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}

class User {
  int id;
  String name;
  int age;
  double height;
  Password _userPassword;

  User(
      {required this.id,
      required this.name,
      required this.age,
      required this.height,
      required String user_password})
      : _userPassword = Password(password: user_password);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      'user_password': _userPassword
          .toString(), // or you can omit this if not needed in JSON
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'] ?? '', // using null coalescing
    );
  }

  bool get userPasswordValid => _userPassword.isValid();

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${userPasswordValid})';
  }
}
