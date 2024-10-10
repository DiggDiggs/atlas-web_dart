void main(List<String> args) {
  int num = int.parse(args[0]);

  switch (num.sign) {
    case -1:
      print('$num is negative');
      break;
    case 0:
      print('$num is zero');
      break;
    case 1:
      print('$num is positive');
      break;
  }
}
