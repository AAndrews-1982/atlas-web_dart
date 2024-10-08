import '0-util.dart';  // Import the fetchUsersCount function

// Define the usersCount function
Future<void> usersCount() async {
  int count = await fetchUsersCount();  // Await the result from fetchUsersCount
  print(count);  // Print the count
}

