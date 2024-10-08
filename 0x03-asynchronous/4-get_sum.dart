import 'dart:convert'; // For JSON decoding
import '4-util.dart';  // Import utility functions

// Function to calculate the total price of items for a user
Future<double> calculateTotal() async {
  try {
    // Step 1: Fetch the user data and extract the user ID
    String userData = await fetchUserData();
    print('User Data: $userData'); // Debugging log
    Map<String, dynamic> user = jsonDecode(userData);
    String userId = user['id'];
    print('User ID: $userId'); // Debugging log

    // Step 2: Fetch the user orders based on user ID
    String ordersData = await fetchUserOrders(userId);
    print('Orders Data: $ordersData'); // Debugging log
    List<dynamic> orders = jsonDecode(ordersData);
    print('Orders List: $orders'); // Debugging log

    double total = 0;

    // Step 3: Fetch the price of each product in the user's orders
    for (String product in orders) {
      print('Fetching price for product: $product'); // Debugging log
      String priceData = await fetchProductPrice(product);
      print('Price Data: $priceData'); // Debugging log
      double price = (jsonDecode(priceData) as num).toDouble();
      total += price;
    }

    print('Total before rounding: $total'); // Debugging log

    // Return the total price rounded to 1 decimal place
    return double.parse(total.toStringAsFixed(1));
  } catch (error) {
    // If any error occurs, return -1 and print the error
    print('Error caught: $error');
    return -1;
  }
}

