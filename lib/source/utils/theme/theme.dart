import 'package:flutter/material.dart';
import 'package:userint/source/utils/theme/widget_theme/elevated_button_theme.dart';
import 'package:userint/source/utils/theme/widget_theme/outlined_button_theme.dart';
import 'package:userint/source/utils/theme/widget_theme/text_field_theme.dart';
import 'package:userint/source/utils/theme/widget_theme/text_theme.dart';

class AppTheme{

  AppTheme._();
  //making the constructor private
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: IOutlineButtonTheme.lightOutlineButtonTheme,
    elevatedButtonTheme: IElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: ITextFormField.LightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark ,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: IOutlineButtonTheme.darkOutlineButtonTheme,
    elevatedButtonTheme: IElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: ITextFormField.darkInputDecorationTheme,
  );
}