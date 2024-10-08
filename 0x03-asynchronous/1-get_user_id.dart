import 'dart:convert'; // For JSON decoding
import '1-util.dart';  // Import fetchUserData

// Define the getUserId function
Future<String> getUserId() async {
  // Fetch the user data (a JSON string)
  String userData = await fetchUserData();

  // Parse the JSON string to extract the user ID
  Map<String, dynamic> user = jsonDecode(userData);

  // Return the user ID
  return user['id'];
}

