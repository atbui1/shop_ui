import 'package:flutter/material.dart';
import 'package:shop_ui/src/models/special_item.dart';
import 'package:shop_ui/src/models/special_set_data.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

class SpecialOfferCard extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _SpecialOfferCardState();
  }

}

class _SpecialOfferCardState extends State<SpecialOfferCard> {
  List<SpecialItem>? testList = SpecialSetData.getSetSpecialData();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: getProportionateScreenWidth(100),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: testList!.length,
        itemBuilder: (context, index) {
      return GestureDetector(
        onTap: (){
          print('so ho la tap ...!');
            },
        child: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Container(
            width: getProportionateScreenWidth(240),
            // height: getProportionateScreenHeight(100),
            decoration: BoxDecoration(
              // color: const Color(0xFF4A1111),
              borderRadius: BorderRadius.circular(getProportionateScreenWidth(20)),
              border: Border.all(color: Colors.black, width: 1, style: BorderStyle.solid),
            ),
            child: ClipRRect(
              borderRadius:  BorderRadius.all(Radius.circular(getProportionateScreenWidth(20))),
              child: Stack(
                children: [
                  Image.asset(
                      testList![index].image,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xFF343434).withOpacity(0.4),
                          const Color(0xFF343434).withOpacity(0.15),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(10),
                        top: getProportionateScreenWidth(5)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          testList![index].name,
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(17),
                            color: Colors.white,
                          ),),
                        Text(
                          "Quantity: ${testList![index].quantity}",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(17),
                            color: Colors.white,
                          ),),
                        Text(
                          "Company: ${testList![index].name}",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(17),
                            color: Colors.white,
                          ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
      },),
    );

    //   GestureDetector(
    //   onTap: (){},
    //   child: SizedBox(
    //     width: getProportionateScreenWidth(250),
    //     height: getProportionateScreenHeight(100),
    //     child: ClipRRect(
    //       borderRadius: const BorderRadius.all(Radius.circular(20)),
    //       child: Stack(
    //         children: [
    //           Image.asset(testList![1].image),
    //           // Image.asset("assets/images/img_banner_1.png"),
    //           // SvgPicture.asset(testList![0].name),
    //         ],
    //       ),
    //     ),
    //   ),
    // )
  }

}