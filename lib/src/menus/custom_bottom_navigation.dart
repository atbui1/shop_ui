import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/src/screens/home/home_page.dart';
import 'package:shop_ui/src/screens/notify/notify_page.dart';
import 'package:shop_ui/src/screens/profile/profile_page.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

import '../screens/contact/contact_page.dart';
import '../utils/menu_enum.dart';

// class CustomBottomNavigation extends StatefulWidget {
//
//
//   const CustomBottomNavigation({super.key, required MenuState selectedMenu});
//
//   @override
//   State<StatefulWidget> createState() {
//     return _CustomBottomState();
//   }
//
// }
//
// class _CustomBottomState extends State<CustomBottomNavigation> {
//
//
class CustomBottomNavigation extends StatelessWidget {

   MenuState? selectedMenu;
  CustomBottomNavigation({super.key, required this.selectedMenu});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    AppSizeConfig().initialSize(context);

    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -5),
            blurRadius: 10,
            color: Colors.red.withOpacity(0.15)
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(40)),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: (){
                  print('print click home home $selectedMenu');
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
                icon: SvgPicture.asset(
                  "assets/icons/ic_shop.svg",
                  colorFilter: ColorFilter.mode(
                  MenuState.home == selectedMenu ? Colors.red : Colors.black12,
                  // MenuState.home == selectedMenu ? tPrimaryColor : inActiveIconColor,
                      BlendMode.srcIn)
                )
            ),
            IconButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => SingInPage()));
                  print('print click home favourite $selectedMenu');
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
                  // Navigator.pushNamed(
                  //   context,
                  //   DetailPage.routeName,
                  //   arguments: ProductDetailsArguments(product!),
                  // );
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NotifyPage()));
                },
                icon: SvgPicture.asset(
                    "assets/icons/ic_heart.svg",
                    colorFilter: ColorFilter.mode(
                        MenuState.favourite == selectedMenu ? Colors.red : Colors.black12,
                        // MenuState.favourite == selectedMenu ? tPrimaryColor : inActiveIconColor,

                        BlendMode.srcIn)
                )
            ),
            IconButton(
                onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => SplashPage()));
                  print('print click home message $selectedMenu');
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ContactPage()));

                },
                icon: SvgPicture.asset(
                    "assets/icons/ic_chat_bubble.svg",
                    colorFilter: ColorFilter.mode(
                        MenuState.contact == selectedMenu ? Colors.red : Colors.black12,
                        // MenuState.message == selectedMenu ? tPrimaryColor : inActiveIconColor,
                        BlendMode.srcIn)
                )
            ),
            IconButton(
                onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => SingUpPage()));
                  print('print click home profile $selectedMenu');
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                },
                icon: SvgPicture.asset(
                    "assets/icons/ic_user.svg",
                    colorFilter: ColorFilter.mode(
                        MenuState.profile == selectedMenu ? Colors.red : Colors.black12,
                        // MenuState.profile == selectedMenu ? tPrimaryColor : inActiveIconColor,
                        BlendMode.srcIn)
                )
            ),
          ],
        ),
      ),
    );
  }

}