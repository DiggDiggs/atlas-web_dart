import 'dart:async';

Future<void> main() async {
  await usersCount();
}

Future<int> fetchUsersCount() async {
  // Simulate a network call or database query
  await Future.delayed(Duration(seconds: 1)); // Simulating a delay
  return 42; // Replace this with actual logic to fetch user count
}

Future<void> usersCount() async {
  int count = await fetchUsersCount();
  print('User count: $count');
}
