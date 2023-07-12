import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/src/models/product.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

import '../../../utils/app_constants.dart';

class ProductDescription extends StatelessWidget {

  final Product product;
  final GestureTapCallback? pressOnSeeMore;


  ProductDescription(this.product, this.pressOnSeeMore);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20), 
          ),
          child: Text(
            product.title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 17
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: const EdgeInsets.all(10),
            width: getProportionateScreenWidth(70),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(getProportionateScreenWidth(20)),
                bottomLeft: Radius.circular(getProportionateScreenWidth(20)),
              ),
              color: product.isFavourite ? const Color(0xFFFFE6E6) : const Color(0xFFF5F6F9),
            ),
            child: SvgPicture.asset(
              "assets/icons/ic_heart_2.svg",
              colorFilter: ColorFilter.mode(
                  product.isFavourite ? const Color(0xFFFF4848) : const Color(0xFFDBDEE4),
                  BlendMode.srcIn),
              height: getProportionateScreenWidth(15),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenWidth(10)
            ),
          child: GestureDetector(
            onTap: (){pressOnSeeMore;},
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("See more detail", style: TextStyle(
                  fontSize: 20,
                  color: tPrimaryColor,
                  fontWeight: FontWeight.w500,
                ),),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SvgPicture.asset("assets/icons/ic_arrow_right.svg",
                    height: 15,
                    colorFilter: const ColorFilter.mode(tPrimaryColor, BlendMode.srcIn),
                  ),
                )
              ],
            ),
          )
        ),
      ],
    );
  }

}