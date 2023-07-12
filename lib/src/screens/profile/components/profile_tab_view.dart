import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

class ProfileTabView extends StatelessWidget {

  final String? title;
  final String? leftIcon;
  final String? rightIcon;
  final Function press;




  const ProfileTabView(this.title, this.leftIcon, this.rightIcon,
      this.press, {super.key});
  // static double qaz = double.infinity;
  // static double qwe = double.infinity - 200;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Center(
      child: Container(
        // alignment: Alignment.center,
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        width: getProportionateScreenWidth(320),
        height: 50,
        child: ElevatedButton(
          onPressed: press as void Function()?,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.yellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 3,
              shadowColor: Colors.green.withOpacity(1),
              side: const BorderSide(width: 2, color: Colors.black)
          ),
            child: Stack(
              alignment: AlignmentDirectional.centerStart,
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(leftIcon!, colorFilter: const ColorFilter.mode(Colors.red, BlendMode.srcIn),)),
                ),
                Positioned(
                    right: -10,
                    width: 50,
                    height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset(rightIcon!, colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title!,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }

}