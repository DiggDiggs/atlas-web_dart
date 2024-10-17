import 'dart:convert'; // For JSON decoding
import 'package:http/http.dart' as http; // For making HTTP requests

// Function to fetch and print all Rick and Morty characters
Future<void> printRmCharacters() async {
  const String url = 'https://rickandmortyapi.com/api/character';

  try {
    // Make a GET request to the Rick and Morty API
    final response = await http.get(Uri.parse(url));

    // Check for successful response
    if (response.statusCode == 200) {
      // Decode the JSON response
      Map<String, dynamic> data = jsonDecode(response.body);
      List<dynamic> characters = data['results'];

      // Print each character's name
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      print('Error: ${response.statusCode}');
    }
  } catch (error) {
    // Catch and print any errors that occur
    print('error caught: $error');
  }
}
