import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/src/utils/app_constants.dart';

class CircleView extends StatelessWidget {

  final String icon;
  final Function press;
  const CircleView(this.icon, this.press, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        height: 50,
        width: 50,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration:  BoxDecoration(
          color: tSecondaryColor.withOpacity(0.2),
          shape: BoxShape.circle,
            border: const Border.fromBorderSide(
                BorderSide(
                  color: tPrimaryColor,
                  style: BorderStyle.solid,
                  width: 2))),
        child: SvgPicture.asset(icon),
      ),
    );
  }

}