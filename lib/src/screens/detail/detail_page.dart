import 'package:flutter/material.dart';
import 'package:shop_ui/src/screens/detail/components/body.dart';

import '../../models/product.dart';
import '../../utils/app_size_config.dart';
import 'components/custom_app_bar.dart';

class DetailPage extends StatefulWidget {
  static String routeName = "/details";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _DetailState();
  }

}

class _DetailState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
     ProductDetailsArguments agrs =
    ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

     AppSizeConfig().initialSize(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F6F9),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: CustomAppBar(agrs.product.rating),
        ),
        body: Body(agrs.product),
      ),
    );
  }
}
class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments(this.product);

// ProductDetailsArguments({required this.product});

}