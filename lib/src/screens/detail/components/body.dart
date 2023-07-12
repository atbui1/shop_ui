import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_ui/src/components/button_view.dart';
import 'package:shop_ui/src/models/product.dart';
import 'package:shop_ui/src/screens/detail/components/color_card.dart';
import 'package:shop_ui/src/screens/detail/components/product_card.dart';
import 'package:shop_ui/src/screens/detail/components/product_description.dart';
import 'package:shop_ui/src/screens/detail/components/top_rounded_container.dart';
import 'package:shop_ui/src/screens/home/home_page.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

import '../../profile/profile_page.dart';



class Body extends StatelessWidget {
  final Product product;

  Body(this.product);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return ListView(
      children: [
        ProductCard(product),
        TopRoundedContainer(
            Colors.white,
            Padding(
              padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
              child: Column(
                children: [
                  ProductDescription(product, () { }),
                  TopRoundedContainer(
                      const Color(0xFFF6F7F9),
                      Padding(
                        padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
                        child: Column(
                          children: [
                            ColorCard(product),
                            Padding(
                              padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
                              child: TopRoundedContainer(
                                Colors.white,
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: AppSizeConfig.screenWidth * 0.15,
                                    right: AppSizeConfig.screenWidth * 0.15,
                                    bottom: getProportionateScreenWidth(20),
                                    top: getProportionateScreenWidth(20),
                                  ),
                                  child: ButtonView(
                                    "Add To Cart",
                                        () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                                        },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ),

                ],
              ),
            ),
        )
      ],
    );
  }

}