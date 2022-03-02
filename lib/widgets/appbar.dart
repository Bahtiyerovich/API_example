import 'package:api25/core/constants/color_const.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final Color? color;
  final Color? textColor;

  const MyAppBar({Key? key, this.title, this.textColor, this.color})
      : super(key: key);

  @override
  Size get preferredSize => const Size(double.infinity, 80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color ?? ColorConst.kPrimaryBlack,
      iconTheme: IconThemeData(color: textColor ?? ColorConst.kPrimaryColor),
      elevation: 0,
      title: Text(
        title ?? "",
        style: TextStyle(color: textColor ?? ColorConst.kPrimaryColor),
      ),
    );
  }
}
