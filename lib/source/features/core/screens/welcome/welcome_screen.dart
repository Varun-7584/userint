import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import 'package:userint/source/common_widgets/fade_in_animation/animation_design.dart';
import 'package:userint/source/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:userint/source/constants/animations.dart';
import 'package:userint/source/constants/colors.dart';
import 'package:userint/source/constants/sizes.dart';
import 'package:userint/source/constants/text_string.dart';
import 'package:userint/source/features/core/screens/SignUp/signup_screen.dart';
import '../../../../common_widgets/fade_in_animation/splash_screen_controller.dart';
import '../login/login_screen.dart';
import '../on_boarding/On_boarding_screen.dart';

//buttons theme in widgets_theme
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);
    //to get the size of the device
    var height = mediaQuery.size.height;
    //to get the mode and adjust the colors respectively
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness== Brightness.dark;
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();
    return Scaffold(
      backgroundColor: isDarkMode ? ISecondaryColor :IPrimaryColor,
      body: Stack(
        children: [
          IFadeInAnimation(
            durationInMs: 1200,
            animatePosition: IAnimatePosition(
              bottomAfter: 0,
              bottomBefore: -130,
              leftBefore: 0,
              leftAfter: 0,
              topBefore: 0,
              topAfter: 0,
              rightBefore: 0 ,
              rightAfter: 0
            ),
            child: Container(
              padding: EdgeInsets.all(IDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Image(
                  //   image: AssetImage(IWelcomeScreenImage),
                  //   height: height * 0.6,
                  // ),
                  Lottie.asset(IWelcomeAnimation),

                  Column(
                    children: [
                      Text(
                        IWelcomeScreenTitle,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        IwelcomeScreenSubTitle,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            Get.to(()=>OnBoardingScreen()); },
                          child: Text(IAboutUsText, style: Theme.of(context).textTheme.titleLarge,),

                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () =>
                            Get.to(()=>const LoginScreen())
                          ,
                          child: Text(ILogin.toUpperCase()),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () =>Get.to(()=> const SignUpScreen() )
                          ,
                          child: Text(ISignUp.toUpperCase()),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
