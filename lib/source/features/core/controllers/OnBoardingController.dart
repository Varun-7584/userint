import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_string.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/on_boarding_screen_widget.dart';

class OnBoardingController extends GetxController{

  final Lcontroller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
          image: IOnBoardingImage1,
          title: IOnBoardingTitle1,
          subtitle: IOnBoardingSubTitle1,
          counterText: IOnBoardingCounter1,
          // height: size.height,
          bgColor: IOnBoardingPage1Color),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
          image: IOnBoardingImage2,
          title: IOnBoardingTitle2,
          subtitle: IOnBoardingSubTitle2,
          counterText: IOnBoardingCounter2,
          // height: size.height,
          bgColor: IOnBoardingPage2Color),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
          image: IOnBoardingImage3,
          title: IOnBoardingTitle3,
          subtitle: IOnBoardingSubTitle3,
          counterText: IOnBoardingCounter3,
          // height: size.height,
          bgColor: IOnBoardingPage3Color),
    ),
  ];
  ////////////////////////////////////////////////////
  skip()=>Lcontroller.jumpToPage(page: 2);
  ////////////////////////////////////////////////////
  animateToNextSlide(){
    int nextPage = Lcontroller.currentPage +1 ;
    Lcontroller.animateToPage(page: nextPage);
  }
  ////////////////////////////////////////////////////
  onPageChangedCallBack(int activePageIndex) {
      currentPage.value = activePageIndex;
  }

}