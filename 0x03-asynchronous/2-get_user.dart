import '2-util.dart';

Future<void> getUser() async {
  try {
    // Fetch user data
    String userData = await fetchUser();

    // Print the user data
    print(userData);
  } catch (error) {
    // Handle the error
    print('error caught: $error');
  }
}
