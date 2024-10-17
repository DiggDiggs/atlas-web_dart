import 'dart:convert'; // For JSON decoding
import '3-util.dart'; // Import utility functions

Future<String> greetUser() async {
  try {
    // Fetch user data
    String userData = await fetchUserData();

    // Parse the JSON response
    Map<String, dynamic> userMap = jsonDecode(userData);

    // Return greeting message
    return 'Hello ${userMap['username']}';
  } catch (error) {
    // Handle error
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    // Check user credentials
    bool isLoggedIn = await checkCredentials();

    if (isLoggedIn) {
      print('There is a user: true');
      // Call greetUser() and return its value
      return await greetUser();
    } else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (error) {
    // Handle error
    return 'error caught: $error';
  }
}
