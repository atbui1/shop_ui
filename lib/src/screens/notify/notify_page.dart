import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_ui/src/utils/app_constants.dart';

import '../../menus/custom_bottom_navigation.dart';
import '../../utils/menu_enum.dart';
import '../notify/components/body.dart';

class NotifyPage extends StatelessWidget {
  static String routeName = "/notify";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.yellow.withOpacity(0.5),
          body: Body(),
          bottomNavigationBar:  CustomBottomNavigation(selectedMenu: MenuState.favourite),
        ));
  }

}
