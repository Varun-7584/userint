import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';
//call this in class theme
class IOutlineButtonTheme {
  IOutlineButtonTheme._();

  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: ISecondaryColor,
      side: BorderSide(color: ISecondaryColor),
      padding: EdgeInsets.symmetric(vertical: IButtonHeight),
    ),
  );

  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: Colors.white,
      side: BorderSide(color: Colors.white),
      padding: EdgeInsets.symmetric(vertical: IButtonHeight),
    ),
  );
}
