void outer(String name, String id) {
  String inner() {
    return 'Hello Agent B.$name your id is $id';
  }

  print(inner());
}

void main() {
  outer("Youssef Belhadj", "001");
}
