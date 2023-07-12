import 'package:flutter/material.dart';
import 'package:shop_ui/src/utils/app_edittext.dart';

class SearchForm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Form(child: TextField(
      decoration: InputDecoration(
        border: AppEdittext.myShowBorder(Colors.green, 1, 10),
        focusedBorder: AppEdittext.myShowBorder(Colors.yellow, 1, 20),
        enabledBorder: AppEdittext.myShowBorder(Colors.deepPurple, 1, 10),
        hintText: "search clothes", hintStyle: const TextStyle(fontSize: 20),
        prefixIcon: SizedBox(
            width: 50,
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset("assets/icons/ic_notify.png"))),
        suffixIcon: Container(
            color: Colors.transparent,
            width: 50,
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset("assets/icons/ic_notify.png"))),
      ),
    ));
  }

}