void outer(String name, String id) {
  String inner() {
    // Split the name to get the first word
    String firstName = name.split(' ')[0];
    return 'Hello Agent B.$firstName your id is $id';
  }

  print(inner());
}

void main() {
  outer("Youssef Belhadj", "001");
}
