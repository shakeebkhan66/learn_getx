import 'package:get/state_manager.dart';
import '../Model/product_model.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;
  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);
<<<<<<< HEAD

  addToCart(Product product) {
    cartItems.add(product);
=======
  String get nameOfProduct => cartItems.fold("", (sum, item) => sum + item.productName);

  double totalTestAmount = 0;

  addToCart(Product product) {
    cartItems.add(product);
    totalTestAmount = totalPrice;
    update();
>>>>>>> 2c07d81 (State Management with GetX)
  }
}