import 'package:flutter/material.dart';

import '../../../utils/app_constants.dart';

class TextMessage extends StatelessWidget {
  String? txt;


  TextMessage(this.txt);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.6),
        decoration: BoxDecoration(
            color: tSecondaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.greenAccent,
              style: BorderStyle.solid,
              width: 1,
            )
        ),
        child: Text(txt!));
  }
  
}