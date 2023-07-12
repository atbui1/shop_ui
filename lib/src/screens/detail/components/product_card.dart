import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_ui/src/models/product.dart';
import 'package:shop_ui/src/utils/app_constants.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

class ProductCard extends StatefulWidget {
  final Product product;

  ProductCard(this.product);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _ProductState();
  }

}

class _ProductState extends State<ProductCard> {

  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(240),
          height: getProportionateScreenWidth(180),
          child: AspectRatio(
            aspectRatio: 2/3,
            child: Hero(
              tag: widget.product.id.toString(),
              child: Image.asset(widget.product.images[selectedImage],),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: getProportionateScreenHeight(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(widget.product.images.length, (index) {
                return smallProductPreview(index);
              })
            ],
          ),
        ),
      ],
    );
  }

  GestureDetector smallProductPreview(int positions) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedImage = positions;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(5)),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.all(getProportionateScreenWidth(8)),
          width: getProportionateScreenWidth(50),
          height: getProportionateScreenWidth(50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: tPrimaryColor.withOpacity(selectedImage == positions ? 1 : 0),
            ),
            color: Colors.white
          ),
          child: Image.asset(widget.product.images[positions]),
        ),
      ),
    );
  }
}