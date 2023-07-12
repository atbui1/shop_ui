import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_ui/src/menus/custom_bottom_navigation.dart';
import 'package:shop_ui/src/screens/profile/components/profile_tab_view.dart';
import 'package:shop_ui/src/utils/menu_enum.dart';

import '../../utils/app_size_config.dart';

class ProfilePage extends StatefulWidget {
  static String routeName = "/profile";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _ProfileState();
  }

}

class _ProfileState extends State<ProfilePage> {
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
            "Profile",
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProfileTabView(
                  "My Account",
                  "assets/icons/ic_user.svg",
                  "assets/icons/ic_arrow_right.svg", () {
              }),
              ProfileTabView(
                  "Notification",
                  "assets/icons/ic_bell.svg",
                  "assets/icons/ic_arrow_right.svg", () {
              }),
              ProfileTabView(
                  "Setting",
                  "assets/icons/ic_setting.svg",
                  "assets/icons/ic_arrow_right.svg", () {
              }),
              ProfileTabView(
                  "Help center",
                  "assets/icons/ic_question.svg",
                  "assets/icons/ic_arrow_right.svg", () {
              }),
              ProfileTabView(
                  "Logout",
                  "assets/icons/ic_logout.svg",
                  "assets/icons/ic_arrow_right.svg", () {
              }),
            ],
          ),
        ),
        bottomNavigationBar:  CustomBottomNavigation(selectedMenu: MenuState.profile),
      ),
    );
  }

}