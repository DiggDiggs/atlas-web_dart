class User {
  // Property to store the name
  String name = '';

  // Method to return a string representation of the User
  String showName() {
    return "Hello $name";
  }
}

void main() {
  final firstPer = User();
  firstPer.name = "Youssef Belhadj";
  print(firstPer.showName());
}
