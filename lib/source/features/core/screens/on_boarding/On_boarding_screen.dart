import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:userint/source/constants/colors.dart';
import 'package:userint/source/features/core/controllers/OnBoardingController.dart';

import '../welcome/welcome_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ObController = OnBoardingController();
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        LiquidSwipe(
          pages: ObController.pages,
          slideIconWidget: Icon(Icons.arrow_back_ios),
          enableSideReveal: false,
          liquidController: ObController.Lcontroller,
          onPageChangeCallback: ObController.onPageChangedCallBack,
        ),
        Positioned(
            bottom: 60,
            child: OutlinedButton(
              onPressed: () {
                ObController.animateToNextSlide();
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration:
                    BoxDecoration(color: IDarkColor, shape: BoxShape.circle),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                ),
              ),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
            )),
        Positioned(
          top: 50,
          right: 20,
          child: TextButton(
              onPressed: () {
                Navigator.pop(context);
                Get.to(()=>WelcomeScreen());
              },
              child: const Text(
                "Exit",
                style: TextStyle(color: Colors.black26, fontSize: 24),
              )),
        ),
        Obx(
          () => Positioned(
            bottom: 20,
            child: AnimatedSmoothIndicator(
              //activeIndex of liquid Swipe
              //for that make a controller within built to have the same context
              activeIndex: ObController.currentPage.value,
              count: 3,
              effect: const WormEffect(
                  activeDotColor: Color(0xff272727), dotHeight: 5.0),
            ),
          ),
        ),
      ],
    ));
  }
}
