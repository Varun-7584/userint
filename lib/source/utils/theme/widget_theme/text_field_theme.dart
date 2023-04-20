import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class ITextFormField {
  ITextFormField._();

  static InputDecorationTheme LightInputDecorationTheme =
      const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: ISecondaryColor,
    floatingLabelStyle: TextStyle(
      color: ISecondaryColor,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: ISecondaryColor),
    ),
  );


  static InputDecorationTheme darkInputDecorationTheme =
  const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: IPrimaryColor,
    floatingLabelStyle: TextStyle(
      color: IPrimaryColor,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: IPrimaryColor),
    ),
  );
}
