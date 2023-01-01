import 'package:ecommerce/utils/constants/size.dart';
import 'package:flutter/material.dart';

class AppAppBarTheme {
  AppAppBarTheme._();

  ///light theme
  static const lightAppBarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black, size: AppSize.iconmd),
      actionsIconTheme: IconThemeData(color: Colors.black, size: AppSize.iconmd),
      titleTextStyle: TextStyle(
          fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black));

  /// Dark theme
  static const darkAppBarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.white, size: AppSize.iconmd),
      actionsIconTheme: IconThemeData(color: Colors.white, size: AppSize.iconmd),
      titleTextStyle: TextStyle(
          fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white));
}
