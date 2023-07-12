import 'package:flutter/material.dart';
import 'package:shop_ui/src/models/cart_item.dart';

class CartCard extends StatelessWidget {

  final CartItem cartItem;


  CartCard(this.cartItem);

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        SizedBox(
          width: 100,
          child: AspectRatio(
            aspectRatio: 0.9,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cartItem.product.images[0]),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cartItem.product.title,
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 2,
              ),
              const SizedBox(height: 5,),
              Text(
                "Price: ${cartItem.product.price}",
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.yellow,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5,),
              Text(
                "Quantity: ${cartItem.numberOfProduct}",
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.green,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5,),
            ],
          ),
        ),
      ],
    );
  }

}