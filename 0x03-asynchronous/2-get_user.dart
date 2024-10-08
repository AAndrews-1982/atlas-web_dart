import '2-util.dart';  // Import fetchUser function

// Function to fetch user and handle errors
Future<void> getUser() async {
  try {
    // Try to fetch the user data
    String user = await fetchUser();
    print(user);  // If successful, print the user data
  } catch (error) {
    // Catch and handle any errors that occur during fetch
    print('error caught: $error');
  }
}

