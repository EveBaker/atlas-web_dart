import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
    try {
        //get user
        String userData = await fetchUserData();
        Map<String, dynamic> userMap = jsonDecode(userData);
        String userId = userMap['id'];


        //get orders
         String ordersData = await fetchUserOrders(userId);
        List<dynamic> ordersList = jsonDecode(ordersData);

        //calculate price
        double totalPrice = 0.0;
            for (var product in ordersList) {
            String priceData = await fetchProductPrice(product);
            double price = double.parse(priceData);
            totalPrice += price;
        }
        return totalPrice;
        } catch (error) {
            return -1;
    }
}