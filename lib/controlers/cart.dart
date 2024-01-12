import 'package:start1/models/cart.dart';

class cartControler {
  List<Cart> cartProducts = [];
  List<Cart> getCart() {
    return cartProducts;
  }

  void deletFromCart(index) {
    cartProducts.removeAt(index);
  }
}
