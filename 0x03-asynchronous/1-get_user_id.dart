import 'dart:convert'; // Import this to handle JSON
import '1-util.dart';

Future<String> getUserId() async {
  // Fetch user data
  String userData = await fetchUserData();

  // Parse the JSON response
  Map<String, dynamic> userMap = jsonDecode(userData);

  // Return the user ID
  return userMap['id'];
}
