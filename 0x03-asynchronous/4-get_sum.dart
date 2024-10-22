import '4-util.dart';
import 'dart:convert';

// Function to calculate the total price of items for a user
Future<dynamic> calculateTotal() async {
  try {
    double price = 0;

    // Step 1: Fetch the user data and extract the user ID
    final String userDataStr = await fetchUserData();
    final Map<String, dynamic> userData = json.decode(userDataStr);
    final String userId = userData['id'];

    // Step 2: Fetch the user orders based on user ID
    final String userOrderStr = await fetchUserOrders(userId);
    final List<dynamic> userOrder = json.decode(userOrderStr);
    
    // Step 3: Fetch the price of each product in the user's orders
    for (var orderId in userOrder) {
      final String productPriceStr = await fetchProductPrice(orderId);
      price += double.parse(productPriceStr);
    }
    // Return the total price
    return price;
  } catch (e) {
    // If any error occurs, return -1.0
    int error = -1;
    return error;
  }
}
