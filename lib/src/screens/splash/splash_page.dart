import 'package:flutter/material.dart';
import 'package:shop_ui/src/screens/home/home_page.dart';
import 'package:shop_ui/src/screens/sing_in/sing_in_page.dart';
import 'package:shop_ui/src/screens/splash/components/splash_content.dart';
import 'package:shop_ui/src/utils/app_edittext.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

import '../../components/button_view.dart';


class SplashPage extends StatefulWidget {
  static String routeName = "/splash";
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _SplashPageState();
  }
}

class _SplashPageState extends State<SplashPage> {

  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "title": "Welcome to Atbui, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "title": "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "title": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    AppSizeConfig().initialSize(context);
    return SafeArea(
        child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
          Expanded(
          // Flexible(
                flex: 3,
                child: PageView.builder(
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                      splashData[index]['title'],
                      splashData[index]['image']),
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  }
                )),
            Expanded(
            // Flexible(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Spacer(),
                    // Wrap(
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // children: [
                      //   List.generate(splashData.length, (index) => buildDot(index: index),),
                      // ],
                      children: List.generate(
                        splashData.length,
                            (index) => buildDot(index: index),
                      ),
                    ),
                    const Spacer(flex: 3,),
                    ButtonView(
                      "Continue",
                        (){
                          Navigator.pushNamed(context, SingInPage.routeName);
                        }
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
    ));

  }
  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: getProportionateScreenHeight(6),
      width: currentPage == index ? 30 : 15,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.orange : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}