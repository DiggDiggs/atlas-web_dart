import 'dart:convert'; // For JSON decoding
import '4-util.dart'; // Import utility functions

Future<double> calculateTotal() async {
  try {
    // Fetch user data
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    String userId = userMap['id'];

    // Fetch user orders
    String ordersData = await fetchUserOrders(userId);
    List<dynamic> orders = jsonDecode(ordersData);

    double totalPrice = 0;

    // Calculate total price of orders
    for (var product in orders) {
      String priceData = await fetchProductPrice(product);
      double productPrice = double.parse(jsonDecode(priceData));
      totalPrice += productPrice;
    }

    return totalPrice;
  } catch (error) {
    // Handle any errors and return -1
    return -1;
  }
}
