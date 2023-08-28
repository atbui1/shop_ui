import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_ui/src/components/product_bag_view.dart';
import 'package:shop_ui/src/components/product_view.dart';
import 'package:shop_ui/src/models/product.dart';
import 'package:shop_ui/src/screens/detail/detail_page.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

class FashionProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: demoProductBag.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) => ProductBagView(demoProductBag[index]));
  }
}