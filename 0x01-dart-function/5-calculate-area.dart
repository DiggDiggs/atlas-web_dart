double calculateArea(double height, double base) {
  double area = (height * base) / 2;
  return double.parse(area.toStringAsFixed(2));
}

void main() {
  print(calculateArea(20, 7)); // Output: 70.00
  print(calculateArea(10, 7)); // Output: 35.00
  print(calculateArea(8.5, 3.7)); // Output: 15.73
}
