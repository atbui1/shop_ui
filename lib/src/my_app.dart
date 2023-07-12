import 'package:flutter/material.dart';
import 'package:shop_ui/src/app_theme.dart';
import 'package:shop_ui/src/routers.dart';
import 'package:shop_ui/src/screens/splash/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return (MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: appTheme(),
      /** way 1:  */
      // home: SplashPage(),
      /** way 2: */
      initialRoute: SplashPage.routeName,
      routes: routes,
    ));
  }
}