

import 'package:flutter/material.dart';
import 'package:shop_ui/src/utils/app_constants.dart';

ThemeData appTheme() {

  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarThemeCustom(),
    textTheme: textThemeCustom(),
    inputDecorationTheme: inputDecorationThemeCustom(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme appBarThemeCustom() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    // brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    // textTheme: TextTheme(
    //   headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    // ),
    titleTextStyle: TextStyle(
      color: tPrimaryColor,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    centerTitle: true,
  );
}

TextTheme textThemeCustom() {
  return const TextTheme(
    bodyMedium: TextStyle(color: tTextColor),
    // bodySmall: TextStyle(color: tTextColor),
    // bodyMedium: TextStyle(color: Colors.red),
    bodySmall: TextStyle(color: Colors.yellow),
    bodyLarge: TextStyle(color: Colors.green),
    headlineMedium: TextStyle(color: Colors.green),
  );
}

InputDecorationTheme inputDecorationThemeCustom() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: tTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}