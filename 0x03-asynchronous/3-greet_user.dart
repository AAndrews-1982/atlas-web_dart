import 'dart:convert'; // For JSON decoding
import '3-util.dart';  // Import the utility functions

// Function to greet the user by username
Future<String> greetUser() async {
  try {
    // Fetch the user data
    String userData = await fetchUserData();

    // Parse the JSON string
    Map<String, dynamic> user = jsonDecode(userData);

    // Return the greeting message
    return 'Hello ${user['username']}';
  } catch (error) {
    // If an error occurs, return the error message
    return 'error caught: $error';
  }
}

// Function to login the user
Future<String> loginUser() async {
  try {
    // Check if credentials are valid
    bool isValidUser = await checkCredentials();

    // Print whether a user is found based on credentials
    print('There is a user: $isValidUser');

    if (isValidUser) {
      // If the credentials are valid, return the greeting from greetUser
      return await greetUser();
    } else {
      // If the credentials are invalid, return wrong credentials message
      return 'Wrong credentials';
    }
  } catch (error) {
    // If an error occurs, return the error message
    return 'error caught: $error';
  }
}

