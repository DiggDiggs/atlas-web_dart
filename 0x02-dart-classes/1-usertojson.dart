class User {
  String name;
  int age;
  double height;

  // Constructor
  User({required this.name, required this.age, required this.height});

  // Method to convert the User object to a map
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'height': height,
    };
  }
}

void main() {
  final user = User(name: "Youssef", age: 25, height: 1.89);
  print(user.toJson());
}
