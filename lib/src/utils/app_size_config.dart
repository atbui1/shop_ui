

import 'package:flutter/material.dart';

class AppSizeConfig {
  static late MediaQueryData mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void initialSize(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
    orientation = mediaQueryData.orientation;
  }
}
/** Get the proportionate height as per screen size */
  double getProportionateScreenHeight(double inputHeight) {
    double screenHeight = AppSizeConfig.screenHeight;
    // 812 is the layout height that designer use
    return (inputHeight / 812.0) * screenHeight;
  }

  /** Get the proportionate width as per screen size */
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = AppSizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}