import 'package:shop_ui/src/models/product.dart';

class CartItem {
  final Product product;
  final int numberOfProduct;

  CartItem(this.product, this.numberOfProduct);
}

/** set default list cart */
List<CartItem> demoListCart = [
  CartItem(demoProducts[0], 1),
  CartItem(demoProducts[1], 5),
  CartItem(demoProducts[2], 7),
];