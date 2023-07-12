import 'package:flutter/material.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

import '../../../utils/app_edittext.dart';

class SearchField extends StatelessWidget {

  String? txtTitle;
  String? txtHint;
  String? iconLeft;
  String? iconRight;

  SearchField(this.txtTitle, this.iconLeft, this.iconRight, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Container(
        // width: AppSizeConfig.screenWidth * 0.6,
        width: MediaQuery.of(context).size.width * 0.6,
      // height: 50,
        color: Colors.white,
        child: TextField(
      decoration: InputDecoration(
        // isDense: true,
        label: txtTitle != "" ? Text(txtTitle!) : null,
        border: AppEdittext.myShowBorder(Colors.green, 1, 10),
        focusedBorder: AppEdittext.myShowBorder(Colors.yellow, 1, 20),
        enabledBorder: AppEdittext.myShowBorder(Colors.deepPurple, 1, 10),
        hintText: "search clothes",
        hintStyle: const TextStyle(fontSize: 20),
        prefixIcon: iconLeft != ""
            ? SizedBox(
                width: 50,
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(iconLeft!)))
            : null,
        suffixIcon: iconRight != ""
            ? Container(
                color: Colors.transparent,
                width: 50,
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(iconRight!)))
            : null,
      ),
    ));
  }
  
}