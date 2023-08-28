import 'package:flutter/material.dart';
import 'package:shop_ui/src/models/product.dart';

class ProductTitleWithImage extends StatelessWidget {

  final Product product;


  ProductTitleWithImage(this.product);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text("Chanel preview summer",
            style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(product.title,
              style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(text: "Price\n", style: TextStyle(color: Colors.white, fontSize: 17)),
                        TextSpan(text: "\$${product.price}", style: const TextStyle(color: Colors.white, fontSize: 17)),
                      ]
                    )),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.bottomRight,
                  // width: 100,
                  // height: 200,
                  margin: const EdgeInsets.symmetric(vertical: 0),
                  // color: Colors.red,
                  child: Hero(
                    tag: "${product.id}",
                    // child: Image.asset(product.images[0], fit: BoxFit.fill,),
                    child: Image.asset(product.images[0],
                      // width: 200,
                      height: 250,
                      fit: BoxFit.contain,),
                  ),
                  // ),
                ),
                ),
            ],
          ),

        ],
      ),
    );
  }
  
}