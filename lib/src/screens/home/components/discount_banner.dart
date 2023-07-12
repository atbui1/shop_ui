import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop_ui/src/utils/app_strings.dart';

import '../../../utils/app_size_config.dart';

class DiscountBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Center(
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(0),
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: const Color(0xFF4A3298),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -5),
                blurRadius: 10,
                color: const Color(0xFF4A3298).withOpacity(0.15)
            ),
          ],
        ),
        child: RichText(
          text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: "A Summer Surpise\n",
                    style:  TextStyle(
                      color: Colors.white,
                      // fontSize: 20,
                      fontSize: getProportionateScreenWidth(15),
                    )
                ),
                TextSpan(
                  text: "Cashback 20%",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(25),
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = (){
                      print('discount banner ...');},
                ),
              ]
          ),
        ),
      ),
    );
  }

}