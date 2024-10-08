import 'dart:convert'; // For JSON decoding
import '4-util.dart';  // Import utility functions

// Function to calculate the total price of items for a user
Future<double> calculateTotal() async {
  try {
    
    // Step 1: Fetch the user data and extract the user ID
    
    String userData = await fetchUserData();
    Map<String, dynamic> user = jsonDecode(userData);
    String userId = user['id'];

    // Step 2: Fetch the user orders based on user ID
    
    String ordersData = await fetchUserOrders(userId);

      // Handle case where ordersData might be null
    if (ordersData == null) {
      throw 'Orders data is null';
    }

    List<dynamic> orders = jsonDecode(ordersData);

    // Handle case where orders might not be a valid list
    if (orders == null || orders.isEmpty) {
      throw 'No valid orders found';
    }

    double total = 0;

    // Step 3: Fetch the price of each product in the user's orders
    
     for (String product in orders) {
      String priceData = await fetchProductPrice(product);
      double price = (jsonDecode(priceData) as num).toDouble();
      total += price;
    }

    // Return the total price rounded to 1 decimal place
    return total;
  } catch (error) {
    // If any error occurs, return -1 and print the error
    print('Error caught: $error');
    return -1;
  }
}

