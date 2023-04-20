import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:userint/source/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:userint/source/constants/image_strings.dart';
import 'package:userint/source/constants/sizes.dart';
import 'package:userint/source/constants/text_string.dart';
import 'package:userint/source/common_widgets/fade_in_animation/splash_screen_controller.dart';

import '../../../../common_widgets/fade_in_animation/animation_design.dart';
import '../../../../constants/colors.dart';
import '../welcome/welcome_screen.dart';

//if we are not using stateful widget we can use observer obx
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            IFadeInAnimation(
              durationInMs: 1600,
              child: const Image(image: AssetImage(ISplashTopIcon)),
              animatePosition: IAnimatePosition(
                  topAfter: 0, topBefore: -30, leftBefore: -30, leftAfter: 0),
            ),
            IFadeInAnimation(
              durationInMs: 2800,
              animatePosition: IAnimatePosition(
                topAfter: 205,
                topBefore:185 ,
                leftBefore: 15,
                leftAfter: 35,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    IAppName,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    IAppTagLine,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            IFadeInAnimation(
                durationInMs: 2400,
                animatePosition: IAnimatePosition(
                  bottomAfter: -20,
                  bottomBefore: -90,
                  leftAfter: 20,
                  leftBefore: 25,
                ),
                child: Image(
                  image: AssetImage(ISplashImage),
                )),
            IFadeInAnimation(
              durationInMs: 2400,
              animatePosition: IAnimatePosition(
                  bottomAfter: -45,
                  bottomBefore: -20,
               rightAfter: -40,
              rightBefore: 10
              ),
              child: Image(
                image: AssetImage(ISplashImageBottomLeft),
              ),
            ),
            IFadeInAnimation(
              durationInMs: 2400,
              animatePosition: IAnimatePosition(
                  bottomAfter: 40,
                  bottomBefore: 0,
                  rightAfter: IDefaultSize,
                  rightBefore: IDefaultSize),
              child: Row(
                children: [
                  Container(
                    width: 300,
                    height: ISplashContainerSize,
                    child: Center(
                      child: Text(
                        'Hello',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: IPrimaryColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    width: ISplashContainerSize,
                    height: ISplashContainerSize,
                    decoration: BoxDecoration(
                      color: IPrimaryColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// void initState() {
//   startAnimation();
// }

// Future startAnimation() async{
//   await Future.delayed(Duration(milliseconds: 500));
//   setState(() {
//     animate = true ;
//   });
//   await Future.delayed(Duration(milliseconds: 5500));
//   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> WelcomeScreen()));
// }
///the alove function was transfered to splash_screen_controoler
//   UPDATED FUNCTION
//   Future startAnimation() async{
//     await Future.delayed(Duration(milliseconds: 500));
//     animate.value = true ;
//     await Future.delayed(Duration(milliseconds: 5500));
//     Get.to(WelcomeScreen());
//   }
