import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/src/screens/detail/detail_page.dart';
import 'package:shop_ui/src/screens/detail_bag/detail_bag_page.dart';
import 'package:shop_ui/src/utils/app_constants.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

import '../models/product.dart';

class ProductBagView extends StatelessWidget {

  final Product product;


  ProductBagView(this.product);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Container(
      width: getProportionateScreenWidth(140),
      decoration: BoxDecoration(
        color: tSecondaryColor.withOpacity(0.05),
        borderRadius: BorderRadius.circular(15),
      ),
      child: GestureDetector(
        // onTap: (){},
        onTap: () => Navigator.pushNamed(
          context,
          DetailBagPage.routeName,
          // arguments: ProductDetailsArguments(product: product),
          arguments: ProductDetailsBag(product),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // AspectRatio(
            //     aspectRatio: 9/8,
            //     child: Container(
            //       padding: EdgeInsets.all(getProportionateScreenWidth(20)),
            //       decoration: BoxDecoration(
            //         color: product.colors[0],
            //         borderRadius: BorderRadius.circular(15),
            //       ),
            //       child: Hero(
            //         tag: "${product.id}",
            //         child: Image.asset(product.images[0]),
            //       ),
            //     ),
            // ),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                  color: product.colors[0],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(product.images[0]),
                ),
              ),
            ),

             Container(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: getProportionateScreenWidth(30),
                  child: Text(
                      product.title,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    maxLines: 2,
                  ),
                ),
                Text(
                  "\$${product.price}",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.w600,
                    color: tPrimaryColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                  // crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                  children: [
                    Text(
                      "${product.rating}",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.w600,
                        color: tSecondaryColor,
                      ),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                        width: getProportionateScreenWidth(28),
                        height: getProportionateScreenWidth(28),
                        decoration: BoxDecoration(
                          color: product.isPopular
                              ? tPrimaryColor.withOpacity(0.15)
                              : tSecondaryColor.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/ic_star.svg",
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  
}