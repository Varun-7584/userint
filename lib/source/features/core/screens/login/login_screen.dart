import 'package:flutter/material.dart';
import 'package:userint/source/constants/colors.dart';
import 'package:userint/source/constants/sizes.dart';
import 'package:userint/source/features/core/screens/login/login_footer_widget.dart';
import 'login_form_widget.dart';
import 'login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness== Brightness.dark;
    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? ISecondaryColor :IPrimaryColor,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(IDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginHeaderWidget(size: size),
                const LoginForm(),
                const LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
