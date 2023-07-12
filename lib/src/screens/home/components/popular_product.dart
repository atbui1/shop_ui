import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_ui/src/components/product_view.dart';
import 'package:shop_ui/src/models/product.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

class PopularProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoProducts.length, (index) {
                if(demoProducts[index].isPopular) {
                  return Padding(
                      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                      child: ProductView(demoProducts[index]));
                } else {
                  return const SizedBox.shrink();
                }
              })
            ],
          ),
        )
      ],
    );
  }

}