import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_ui/src/models/product.dart';

import '../../../utils/app_constants.dart';
import '../../../utils/app_size_config.dart';

class ColorCard extends StatefulWidget {
  final Product product;

  ColorCard(this.product);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _ColorCardState();
  }

}

class _ColorCardState extends State<ColorCard> {
  int selectColor = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Row(
      children: [
        ...List.generate(widget.product.colors.length, (index) {
          return smallColorView(index);
        })
      ],
    );
  }

  GestureDetector smallColorView(int positions) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectColor = positions;
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
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: tPrimaryColor.withOpacity(selectColor == positions ? 1 : 0),
              ),
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              // color: Colors.black
              color: widget.product.colors[positions],
            ),
          ),
        ),
      ),
    );
  }
}