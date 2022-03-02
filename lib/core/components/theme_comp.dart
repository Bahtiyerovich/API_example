import 'package:api25/core/constants/color_const.dart';
import 'package:flutter/material.dart';

class ThemeComp {

      static get darkTheme => ThemeData(
    scaffoldBackgroundColor: ColorConst.kPrimaryLightGrey,
        colorScheme: ColorScheme.dark(

          brightness: Brightness.dark,
          primary: ColorConst.kPrimaryColor,
        ),
      );


  static get lightTheme => ThemeData(
    scaffoldBackgroundColor: ColorConst.kPrimaryWhite,
        colorScheme: ColorScheme.light(
          brightness: Brightness.light,
          primary: ColorConst.kPrimaryColor,
        ),
      );
}
