int fact(int f) {
  if (f <= 0) {
    return 1;
  } else if (f == 1) {
    return 1;
  } else {
    return f * fact(f - 1);
  }
}

void main() {
  print(fact(0)); // Output: 1
  print(fact(1)); // Output: 1
  print(fact(5)); // Output: 120
}
