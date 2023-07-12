import 'package:flutter/material.dart';
import 'package:shop_ui/src/menus/custom_bottom_navigation.dart';
import 'package:shop_ui/src/screens/contact/components/body.dart';
import 'package:shop_ui/src/utils/menu_enum.dart';

import '../../utils/app_size_config.dart';

class ContactPage extends StatefulWidget {
  static String routeName = "/contacts";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _ContactState();
  }

}

class _ContactState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    AppSizeConfig().initialSize(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Contacts",
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
            ),
          ),
        ),
        body: Body(),
        bottomNavigationBar:  CustomBottomNavigation(selectedMenu: MenuState.contact),
      ),
    );
  }

}