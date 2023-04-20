import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:userint/source/constants/animations.dart';
import 'package:userint/source/constants/text_string.dart';



class SignUpHeaderWidget extends StatelessWidget {
  const SignUpHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.0,),
        // Image(image: const AssetImage(ILoginScreenImaage), height: size.height *0.2,),
        Container(child : Lottie.asset(ISignUpAnimation),
          height:size.height *0.1,),
        SizedBox(height: 20.0,),
        Text(ISignUpTitle , style: Theme.of(context).textTheme.headlineMedium,),
        SizedBox(height: 5.0,),
        Text(ISignUpSubTitle , style: Theme.of(context).textTheme.titleMedium,),
        SizedBox(height: 20,)
      ],
    );
  }
}
