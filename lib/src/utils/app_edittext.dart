import 'package:flutter/material.dart';

class AppEdittext {
  static OutlineInputBorder myInputBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.black,
          width: 1,
        )
    );
  }

  static OutlineInputBorder myFocusBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.blue,
          width: 1,
        )
    );
  }

  static OutlineInputBorder myShowBorder(Color color, double width, double radius) {
    return  OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        borderSide: BorderSide(
          color: color,
          width: width,
        )
    );
  }
}