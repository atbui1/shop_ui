import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../models/product.dart';
import '../../utils/app_size_config.dart';
import '../detail_bag//components/body.dart';

class DetailBagPage extends StatefulWidget {
  static String routeName = "/details_bag";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _DetailBagState();
  }

}

class _DetailBagState extends State<DetailBagPage> {

  @override
  void initState() {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    ProductDetailsBag agrs =
    ModalRoute.of(context)!.settings.arguments as ProductDetailsBag;

    AppSizeConfig().initialSize(context);


    return SafeArea(
      child: Scaffold(
        // backgroundColor: const Color(0xFFF5F6F9),
        backgroundColor: agrs.product.colors[0],
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Bag",
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
            ),
          ),
        ),
        body: Body(agrs.product),
      ),
    );
  }
}
class ProductDetailsBag {
  final Product product;

  ProductDetailsBag(this.product);


}