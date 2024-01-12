import 'package:start1/models/Product.dart';
import 'package:start1/models/cart.dart';
import 'package:start1/shared/shared.dart' as shared;

class ProductControler {
  List<Product> products = [];

  void addproduct() {
    products.add(
      Product(image: "assets/images/img3.jpg", name: "gjggj", price: 4, qut: 5),
    );
    products.add(
      Product(image: "assets/images/img2.jpg", name: "gjggj", price: 4, qut: 4),
    );
    products.add(
      Product(image: "assets/images/img1.jpg", name: "gjggj", price: 4, qut: 3),
    );
  }

  List<Product> getproduct() {
    return products;
  }

  void addQutProduct(Product product) {
    product.qut += 1;
  }

  void removeQutProduct(Product product) {
    product.qut -= 1;
  }

  void addToCart(Product product) {
    Cart cart = Cart(
        image: product.image,
        name: product.name,
        price: product.price,
        qut: product.qut);
    shared.cartcontroler.cartProducts.add(cart);
    print(shared.cartcontroler.cartProducts.length);
  }
}
