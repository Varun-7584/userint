import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../../constants/animations.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/text_string.dart';


class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image(image: const AssetImage(ILoginScreenImaage), height: size.height *0.2,),
        Container(child : Lottie.asset(ILoginAnimation),
        height:size.height *0.2,),
        Text(ILoginScreenTitle , style: Theme.of(context).textTheme.headlineMedium,),
        Text(ILoginScreenSubTitle , style: Theme.of(context).textTheme.titleMedium,),
        SizedBox(height: 20,)
      ],
    );
  }
}
