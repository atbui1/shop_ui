import 'package:flutter/material.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

import 'components/body.dart';
import 'components/checkout_card.dart';

class CartPage extends StatefulWidget {

  static String routeName = "/cart";

  @override
  State<StatefulWidget> createState() {
   return _CartState();
  }

}

class _CartState extends State<CartPage> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
//
// }
//
// class CartPage extends StatelessWidget {

  // static String routeName = "/cart";


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    AppSizeConfig().initialSize(context);


    return SafeArea(
        child: Scaffold(
          appBar: customAppbar(context),
          body: Body(),
          bottomNavigationBar: CheckoutCard(),
        ));
  }

  AppBar customAppbar(BuildContext context) {
    return AppBar(
      title: const Text('Cart', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.red),),
      centerTitle: true,
    );
  }
}