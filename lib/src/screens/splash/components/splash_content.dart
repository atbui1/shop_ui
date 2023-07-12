import 'package:flutter/material.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

class SplashContent extends StatelessWidget {

  String? title, image;
  SplashContent(this.title, this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Column(
      children: [
        const Spacer(),
         Text(
          "ATBUI",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(25),
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          title!,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(17)
          ),
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2,),
        Image.asset(
          image!,
          width: getProportionateScreenWidth(235),
          height: getProportionateScreenHeight(265),
          // width: 250,
          // height: 300,
        )
      ],
    );
  }


}