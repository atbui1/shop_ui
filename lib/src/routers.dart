

import 'package:flutter/cupertino.dart';
import 'package:shop_ui/src/screens/cart/cart_page.dart';
import 'package:shop_ui/src/screens/contact/contact_page.dart';
import 'package:shop_ui/src/screens/detail/detail_page.dart';
import 'package:shop_ui/src/screens/detail_bag/detail_bag_page.dart';
import 'package:shop_ui/src/screens/home/home_page.dart';
import 'package:shop_ui/src/screens/message/message_page.dart';
import 'package:shop_ui/src/screens/notify/notify_page.dart';
import 'package:shop_ui/src/screens/profile/profile_page.dart';
import 'package:shop_ui/src/screens/sing_in/sing_in_page.dart';
import 'package:shop_ui/src/screens/sing_up/sing_up_page.dart';
import 'package:shop_ui/src/screens/splash/splash_page.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => SplashPage(),
  SingUpPage.routeName: (context) => SingUpPage(),
  SingInPage.routeName: (context) => SingInPage(),
  ProfilePage.routeName: (context) => ProfilePage(),
  ContactPage.routeName: (context) => ContactPage(),
  HomePage.routeName: (context) => HomePage(),
  DetailPage.routeName: (context) => DetailPage(),
  DetailBagPage.routeName: (context) => DetailBagPage(),
  CartPage.routeName: (context) => CartPage(),
  NotifyPage.routeName: (context) => NotifyPage(),
  // MessagePage.routeName: (context) => MessagePage(contacts: null,),
};