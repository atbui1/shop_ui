import 'package:flutter/material.dart';
import 'package:shop_ui/src/components/circle_notify_view.dart';
import 'package:shop_ui/src/screens/cart/cart_page.dart';
import 'package:shop_ui/src/screens/home/components/search_field.dart';
import 'package:shop_ui/src/screens/home/components/search_form.dart';

import '../../../utils/app_size_config.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 10,
              vertical: 5
            ),
              child: SearchField("", "assets/icons/ic_notify.png", "assets/icons/ic_notify.png")),
          CircleNotifyView("assets/icons/ic_cart.svg", 10, (){
            print('ahihi header circle 1');
            Navigator.pushNamed(
              context,
              CartPage.routeName,
            );
          }),
          CircleNotifyView("assets/icons/ic_bell.svg", 04, (){
            print('ahihi header circle 2');
          }),
        ],
      ),
    );
  }


}