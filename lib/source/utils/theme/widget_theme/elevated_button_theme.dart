import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class IElevatedButtonTheme{
  IElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: Colors.white,
      backgroundColor: ISecondaryColor,
      elevation: 10,
      side: BorderSide(color: ISecondaryColor),
      padding: EdgeInsets.symmetric(vertical: IButtonHeight),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: ISecondaryColor,
      backgroundColor: Colors.white,
      elevation: 10,
      side: BorderSide(color: ISecondaryColor),
      padding: EdgeInsets.symmetric(vertical: IButtonHeight),
    ),
  );

}