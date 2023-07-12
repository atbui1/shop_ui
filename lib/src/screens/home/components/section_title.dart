import 'package:flutter/material.dart';
import 'package:shop_ui/src/utils/app_constants.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

class SectionTitle extends StatelessWidget {

  String? title;
  Function? press;


  SectionTitle(this.title, this.press, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title!,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(15),
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: press as void Function()? ,
          child: Text(
            "See more >>",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(17),
              color: tSecondaryColor,
            ),
          ),
        ),
      ],
    );
  }
  
}