import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/src/utils/app_constants.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

class CustomAppBar extends StatelessWidget {
  final double rating;

  CustomAppBar(this.rating);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Row(
            children: [
              SizedBox(
                width: getProportionateScreenWidth(40),
                height: getProportionateScreenWidth(40),
                child: TextButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60)
                    ),
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.zero,
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/ic_arrow_left.svg",
                    height: 15,
                  ),
                ),
              ),
               const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  children: [
                     Text(
                      rating.toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.yellow,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                      child: SvgPicture.asset(
                        "assets/icons/ic_star.svg",
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }

}