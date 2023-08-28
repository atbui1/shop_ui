import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/src/components/button_view.dart';
import 'package:shop_ui/src/models/product.dart';
import 'package:shop_ui/src/screens/cart/cart_page.dart';
import 'package:shop_ui/src/screens/detail_bag/components/color_card.dart';
import 'package:shop_ui/src/screens/detail/components/product_card.dart';
import 'package:shop_ui/src/screens/detail/components/top_rounded_container.dart';
import 'package:shop_ui/src/screens/detail_bag/components/product_bag_description.dart';
import 'package:shop_ui/src/screens/detail_bag/components/product_title_with_image.dart';
import 'package:shop_ui/src/screens/home/home_page.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';


class Body extends StatelessWidget {
  final Product product;

  Body(this.product);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    Size size = MediaQuery.of(context).size;

    return ListView(
      children: [
        SizedBox(
          height: size.height,
        child:Stack(
            children: [
        // ProductCard(product),
        /** widget description product */
        Container(
          margin: EdgeInsets.only(top: size.height * 0.32),

          child: TopRoundedContainer(
              Colors.white,
              Padding(
                padding: EdgeInsets.only(top: getProportionateScreenWidth(80)),
                child: Column(
                  children: [
                    ProductBagDescription(product, () { }),
                    /** widget option circle colors */
                    TopRoundedContainer(
                        const Color(0xFFF6F7F9),
                        Padding(
                          padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
                          child: Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: ColorCard(product)),
                              /** widget btn add ro cart */
                              Padding(
                                padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
                                child: TopRoundedContainer(
                                  Colors.white,
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: AppSizeConfig.screenWidth * 0.05,
                                      right: AppSizeConfig.screenWidth * 0.05,
                                      bottom: getProportionateScreenWidth(20),
                                      top: getProportionateScreenWidth(20),
                                    ),
                                    /** row icon and btn cart */
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(10),
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(
                                                color: Colors.greenAccent,
                                                style: BorderStyle.solid,
                                                width: 1,
                                              )
                                            ),
                                            child: SvgPicture.asset("assets/icons/ic_cart.svg"),
                                          ),
                                        ),
                                        SizedBox(
                                          width: getProportionateScreenWidth(250),
                                          child: ButtonView(
                                          "Add To Cart",
                                              () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                                          },
                                        ),
                                        ),
                                      ],
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
          ),
        ),
        /** show name, price and image product */
        ProductTitleWithImage(product),
    /** wwwwwwwwww */
    ],),),
      ],
    );
  }

}