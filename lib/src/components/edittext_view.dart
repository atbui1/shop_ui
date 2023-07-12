import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/src/utils/app_constants.dart';

import '../utils/app_edittext.dart';

class EdittextView extends StatelessWidget {

  final String labelText;
  final String hintText;
  final String iconLeft;
  final String iconRight;
  String? iconRightTrue;
  Stream? stream;
  final TextEditingController textController;
  bool flag = false;
  Function? press;


  EdittextView.stream(
      this.labelText,
      this.hintText,
      this.iconLeft,
      this.iconRight,
      this.stream,
      this.textController,
      {super.key}
      );

  EdittextView.passForm(
      this.labelText,
      this.hintText,
      this.iconLeft,
      this.iconRight,
      this.iconRightTrue,
      this.stream,
      this.textController,
      this.flag,
      this.press,
      {super.key}
      );

  EdittextView.defaultForm(
      this.labelText,
      this.hintText,
      this.iconLeft,
      this.iconRight,
      this.textController,
      {super.key}
      );



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  SizedBox(
      // margin: const EdgeInsets.fromLTRB(10, 5, 10, 20),
      child: StreamBuilder(
          stream: stream,
          builder: (context, snapshot) {
            return TextField(
              style: const TextStyle(
                fontSize: 15,
              ),
              controller: textController,
              obscureText: flag,
              decoration: InputDecoration(
                labelText: labelText,
                hintText: hintText,
                labelStyle: TextStyle(
                    fontSize: 15,
                    color: snapshot.hasError
                        ? Colors.red
                        : Colors.deepPurple),
                errorText: snapshot.hasError
                    ? snapshot.error.toString()
                    : null,
                errorStyle: const TextStyle(color: Colors.greenAccent),
                floatingLabelStyle: TextStyle(
                    color: snapshot.hasError
                        ? Colors.red
                        : Colors.orange),
                prefixIcon: iconLeft != "" ? Container(
                  padding: const EdgeInsets.all(10),
                  width: 30,
                  // child: Image.asset(
                  //   iconLeft,
                  //   color: Colors.black,
                  // ),
                  child: SvgPicture.asset(iconLeft,
                      // colorFilter: const ColorFilter.mode(Colors.red, BlendMode.srcIn)
                  ),
                ) : null,
                suffixIcon: iconRight != "" ? Container(
                    color: Colors.transparent,
                    width: 50,
                    child: GestureDetector(
                      onTap: press as void Function()?,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: 30,
                        child: flag
                            ? Image.asset(
                          // "assets/icons/ic_eye_hide.png",
                          iconRightTrue!,
                          color: Colors.black,
                        )
                            : Image.asset(
                          // "assets/icons/ic_eye_show.png",
                          iconRight,
                          color: Colors.black,
                        ),
                      ),
                    ),
                )
                    : null,
                border: AppEdittext.myShowBorder(Colors.green, 1, 10),
                enabledBorder: AppEdittext.myShowBorder(tPrimaryColor, 1, 10),
                focusedBorder: AppEdittext.myShowBorder(tSecondaryColor, 1, 10),
                errorBorder: AppEdittext.myShowBorder(Colors.green, 1, 10),
                focusedErrorBorder: AppEdittext.myShowBorder(Colors.black, 1, 10),
              ),
            );
          }),
    );
  }

}