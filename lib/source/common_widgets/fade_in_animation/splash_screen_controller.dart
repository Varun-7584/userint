import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:userint/source/features/core/screens/on_boarding/On_boarding_screen.dart';
import 'package:userint/source/features/core/screens/splash_screen/splash_screen.dart';
import 'package:userint/source/features/core/screens/welcome/welcome_screen.dart';

class FadeInAnimationController extends GetxController {
  static FadeInAnimationController get find => Get.find();
  RxBool animate = false.obs;

//Rx bool and its method are Mainly beneficial as we do not have to create the instances

  Future startSplashAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 3800));
    animate.value = false;
    await Future.delayed(const Duration(milliseconds: 1500));
    // Get.to(OnBoardingScreen());
    Get.offAll(WelcomeScreen());
  }

  ////////////////////////////////////////////////////

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 1100));
    animate.value = true;
  }
}
