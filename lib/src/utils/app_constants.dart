import 'package:flutter/material.dart';

import 'app_size_config.dart';
const inActiveIconColor = Color(0xFFB6B6B6);
const tPrimaryColor = Color(0xFFFF7643);
const tPrimaryLightColor = Color(0xFFFFECDF);
const tPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const tSecondaryColor = Color(0xFF979797);
const tTextColor = Color(0xFF757575);

const tAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);