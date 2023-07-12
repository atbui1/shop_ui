import 'dart:async';

import 'package:shop_ui/src/models/cart_item.dart';

class CartBloc {
  final StreamController _cartController = StreamController();

  Stream get cartStream => _cartController.stream;

  var cartList = demoListCart;

  sumTotalPrice() {
    double sum = 0;
    cartList.forEach((element) {
      sum = sum + element.numberOfProduct * element.product.price;
    });
    print('xxxxxxxxxxxxxx: $sum');

    return sum.toStringAsFixed(2);
  }


  void dispose() {
    _cartController.close();
  }
}