void main(List<String> args) {
  int num = int.parse(args[0]);
  if (num >= 80) {
    print('You Passed');
  } else {
    print('You Did Not Pass');
  }
}
