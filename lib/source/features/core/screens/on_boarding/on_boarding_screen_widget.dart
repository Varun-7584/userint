import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../models/model_on_boarding.dart';


class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness== Brightness.dark;
    //get the size of the image
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(IDefaultSize),
      color: isDarkMode ? ISecondaryColor : model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.4,
          ),
          Column(
            children: [
              Text(model.title,
                  style: Theme.of(context).textTheme.titleLarge),
              SizedBox(
                height: 10,
              ),
              Text(model.subtitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            model.counterText,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
