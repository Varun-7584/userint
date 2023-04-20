import 'package:flutter/material.dart';
import 'package:userint/source/constants/text_string.dart';
import 'package:userint/source/features/core/screens/SignUp/signup_footer_widget.dart';
import 'package:userint/source/features/core/screens/SignUp/signup_form.dart';
import 'package:userint/source/features/core/screens/SignUp/signup_header_widget.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness== Brightness.dark;
    return
      SafeArea(
        child: Scaffold(
          backgroundColor: isDarkMode ? ISecondaryColor :IPrimaryColor,
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(IDefaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SignUpHeaderWidget(size:size),
                  signup_form_widget(),
                  SignUpFooterWidget(),
                ],
              ),
            ),
          ),
        ),
      );
  }
}
