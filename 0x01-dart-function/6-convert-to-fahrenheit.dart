List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC.map((celsius) {
    double fahrenheit = (celsius * 9 / 5) + 32;
    return double.parse(fahrenheit.toStringAsFixed(2));
  }).toList();
}

void main() {
  print(convertToF(
      [25, 26, 23, 27, 30])); // Output: [77.0, 78.8, 73.4, 80.6, 86.0]
  print(convertToF(
      [22.5, 26, 27.3, 23.6, 25])); // Output: [72.5, 78.8, 81.14, 74.48, 77.0]
  print(convertToF(
      [-4.2, -2, 0.5, -5, -1.7])); // Output: [24.44, 28.4, 32.9, 23.0, 28.94]
}
