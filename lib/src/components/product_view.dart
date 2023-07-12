import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/src/screens/detail/detail_page.dart';
import 'package:shop_ui/src/utils/app_constants.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

import '../models/product.dart';

class ProductView extends StatelessWidget {

  final Product product;


  ProductView(this.product);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return SizedBox(
      width: getProportionateScreenWidth(140),
      child: GestureDetector(
        // onTap: (){},
        onTap: () => Navigator.pushNamed(
          context,
          DetailPage.routeName,
          // arguments: ProductDetailsArguments(product: product),
          arguments: ProductDetailsArguments(product),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
                aspectRatio: 9/8,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: tSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: product.title.toString(),
                    child: Image.asset(product.images[0]),
                  ),
                ),
            ),
             Container(height: 10),
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
            Row(
              children: [
                Text(
                  "\$${product.price}",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.w600,
                    color: tPrimaryColor,
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
                      "assets/icons/ic_heart_2.svg",
                      colorFilter: ColorFilter.mode(
                          product.isFavourite
                              ? Color(0xFFFF4848)
                              : Color(0xFFDBDEE4),
                          BlendMode.srcIn),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  
}