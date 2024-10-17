import '0-main.dart';
import '0-util.dart';

Future<void> usersCount() async {
  int count = await fetchUsersCount();
  print(count);
}
