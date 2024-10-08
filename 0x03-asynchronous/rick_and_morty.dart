import 'dart:convert'; // For JSON decoding
import 'package:http/http.dart' as http; // For making HTTP requests

// Function to fetch and print Rick and Morty characters
Future<void> printRmCharacters() async {
  try {
    // Define the Rick and Morty API URL
    var url = Uri.parse('https://rickandmortyapi.com/api/character');

    // Send the GET request to the API
    var response = await http.get(url);

    // Check if the request was successful
    if (response.statusCode == 200) {
      // Decode the response body into a map
      var data = jsonDecode(response.body);

      // Extract the list of characters from the data
      List<dynamic> characters = data['results'];

      // Print the name of each character
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      // Handle the error if the response is not 200 OK
      print('Error: ${response.statusCode}');
    }
  } catch (error) {
    // Catch and print any errors that occur
    print('Error caught: $error');
  }
}

