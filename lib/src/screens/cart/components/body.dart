import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/src/blocs/cart_bloc.dart';
import 'package:shop_ui/src/models/cart_item.dart';
import 'cart_card.dart';

class Body extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _BodyState();
  }

}

class _BodyState extends State<Body> {

  CartBloc cartBloc = CartBloc();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: demoListCart.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            key: Key(demoListCart[index].product.id.toString()),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                demoListCart.removeAt(index);
                cartBloc.sumTotalPrice();
              });
            },
            background: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  const Spacer(),
                  SvgPicture.asset("assets/icons/ic_delete.svg")
                ],
              ),
            ),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CartCard(demoListCart[index])),
          ),
        );

      },
    );
  }
}