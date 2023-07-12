import 'package:flutter/material.dart';
import 'package:shop_ui/src/utils/app_constants.dart';

class ButtonView extends StatelessWidget {

  final String? title;
  final Function press;


  const ButtonView(this.title, this.press, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      onPressed: press as void Function()?,
      style: ElevatedButton.styleFrom(
          minimumSize:  Size(MediaQuery.of(context).size.width - 100, 50),
          // minimumSize: const Size((double.infinity) - 200, 50),
          backgroundColor: tPrimaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 10,
          shadowColor: Colors.green.withOpacity(0.5),
          side: const BorderSide(width: 2, color: Colors.red)
      ),
      child: Text(
        title!,
        style: const TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

}