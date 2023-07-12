import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/src/blocs/cart_bloc.dart';
import 'package:shop_ui/src/components/button_view.dart';
import 'package:shop_ui/src/models/cart_item.dart';
import 'package:shop_ui/src/screens/cart/components/body.dart';
import 'package:shop_ui/src/utils/app_constants.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

class CheckoutCard extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _CheckoutCardState();
  }

}

class _CheckoutCardState extends State<CheckoutCard> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
//
// }
//
// class CheckoutCard extends StatelessWidget {
//   const CheckoutCard({super.key});


CartBloc cartBloc = CartBloc();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        // vertical: getProportionateScreenWidth(30)
        vertical: 30,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/icons/ic_receipt.svg"),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: (){
                    print('Add voucher...');
                  },
                  child: Row(
                    children: [
                      const Text(
                        "Add voucher code",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: tPrimaryColor,
                        ),
                      ),
                      const SizedBox(width: 10,),
                      SvgPicture.asset("assets/icons/ic_arrow_right.svg"),
                    ],
                  )
                )
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    children: [
                      TextSpan(
                        text: "jj: " + cartBloc.sumTotalPrice(),
                        // text: "qwe: " + sumPrice().toString(),
                        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.red),
                      )
                    ]
                  )
                ),
                SizedBox(
                  width: getProportionateScreenWidth(150),
                  child: ButtonView("Checkout", (){
                    print('Checkout --> buy');
                    sumPrice();
                  }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

   sumPrice() {

    Body body = Body();
     print('sum 11111111111111111111111111111');
    double sum = 0;
    demoListCart.forEach((element) {
      sum = sum + element.numberOfProduct * element.product.price;
    });

    setState(() {
     sum.toStringAsFixed(2);
    });
    return sum.toStringAsFixed(2);
  }
}