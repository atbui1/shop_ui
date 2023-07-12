import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_ui/src/utils/app_constants.dart';

class CircleNotifyView extends StatelessWidget {

  String? icon;
  int? count;
  Function? press;


  CircleNotifyView(this.icon, this.count, this.press);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return GestureDetector(
      onTap: press as void Function()?,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 50,
            width: 50,
            margin: const EdgeInsets.all(2),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: tSecondaryColor.withOpacity(0.1),
                shape: BoxShape.circle,
                border: const Border.fromBorderSide(BorderSide(
                    color: tPrimaryColor, style: BorderStyle.solid, width: 1))),
            child: SvgPicture.asset(icon!),
          ),
          Container(
            child: count != 0 ?
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                // height: getProportionateScreenWidth(16),
                // width: getProportionateScreenWidth(16),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: tPrimaryColor,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "$count",
                    style: const TextStyle(
                      // fontSize: getProportionateScreenWidth(10),
                      fontSize: 10,
                      height: 1,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ) : null,
          ),
        ],
      ),
    );
  }

}