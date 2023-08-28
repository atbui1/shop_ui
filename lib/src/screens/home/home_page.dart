import 'package:flutter/material.dart';
import 'package:shop_ui/src/menus/custom_bottom_navigation.dart';
import 'package:shop_ui/src/screens/home/components/discount_banner.dart';
import 'package:shop_ui/src/screens/home/components/home_header.dart';
import 'package:shop_ui/src/screens/home/components/popular_product.dart';
import 'package:shop_ui/src/screens/home/components/search_form.dart';
import 'package:shop_ui/src/utils/menu_enum.dart';

import '../../menus/home_menu.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_size_config.dart';
import 'components/category_card.dart';
import 'components/fashion_product.dart';
import 'components/section_title.dart';
import 'components/special_offer_card.dart';

class HomePage extends StatefulWidget{
  static String routeName = "/messages";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    AppSizeConfig().initialSize(context);

    return SafeArea(
      child: Scaffold(
      key: _scaffoldKey,
      drawer: const Drawer(
        child: HomeMenu(),
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: TextButton(
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
              print('open menu draw');
            },
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset("assets/icons/ic_menu_1.png"))),
        title: const Text(
          "",
          style: TextStyle(
            fontSize: 20,
            color: Colors.greenAccent,
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset("assets/icons/ic_notify.png"))
        ],
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
              child: Text(
                "Explore",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: AppColors.defaultText,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
              child: Text(
                "Best outfit for you",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: AppColors.defaultText,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5
              ),
                child: SearchForm()),
            Container(
              // color: Colors.green,
              height: 10,
              width: double.infinity,
            ),
            HomeHeader(),
            Container(
              // color: Colors.yellow,
              height: 10,
              width: double.infinity,
            ),
            DiscountBanner(),
            Container(
              // color: Colors.red,
              height: 10,
              width: double.infinity,
            ),
            const CategoryCard(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: SectionTitle("Special for you", (){
                print('ahihi');
              }),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10, bottom:10),
                child: SpecialOfferCard()),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: SectionTitle("Popular Products", null)),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: PopularProduct(),),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: SectionTitle("Fashion", null)),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: FashionProduct(),),


          ],
        ),
      ),
        bottomNavigationBar:  CustomBottomNavigation(selectedMenu:MenuState.home),
    ));
  }
}