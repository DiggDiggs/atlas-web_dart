import '0-main.dart';

Future<void> usersCount() async {
  int count = await fetchUsersCount();
  print(count);
}
