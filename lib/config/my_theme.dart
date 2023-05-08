import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

class MyTheme {
  static final FlexSchemeColor myLightTheme = FlexSchemeColor.from(
    primary: Color(0xff6750a4),
    primaryContainer: Color(0xffeaddff),
    secondary: Color(0xff625b71),
    secondaryContainer: Color(0xffe8def8),
    tertiary: Color(0xff7d5260),
    tertiaryContainer: Color(0xffffd8e4),
    appBarColor: Color(0xffe8def8),
    error: Color(0xffb00020),
  );
  static final FlexSchemeColor myDarkTheme = FlexSchemeColor.from(
    primary: Color(0xffd0bcff),
    primaryContainer: Color(0xff4f378b),
    secondary: Color(0xffccc2dc),
    secondaryContainer: Color(0xff4a4458),
    tertiary: Color(0xffefb8c8),
    tertiaryContainer: Color(0xff633b48),
    appBarColor: Color(0xff4a4458),
    error: Color(0xffcf6679),
  );
}
