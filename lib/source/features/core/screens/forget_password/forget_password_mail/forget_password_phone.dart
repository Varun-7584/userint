import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:userint/source/constants/sizes.dart';

import '../../../../../constants/animations.dart';
import '../../../../../constants/colors.dart';
import '../../../../../constants/text_string.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness== Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? ISecondaryColor :IPrimaryColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(IDefaultSize),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image(image: const AssetImage(ILoginScreenImaage), height: size.height *0.2,),
              Container(child : Lottie.asset(IForgetPassPhoneAnimation),
                height:size.height *0.3,),
              Text(IForgetPasswordTxt , style: Theme.of(context).textTheme.headlineMedium,),
              SizedBox(height: IDefaultSize-20,),
              Text(IForgetPasswordTxtSubPhone , style: Theme.of(context).textTheme.titleMedium,),
              SizedBox(height: 20,),
              Form(child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(IPhoneTxt),
                      hintText: IPhoneTxt,
                      prefixIcon: Icon(Icons.phone_outlined),
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){},
                      child: const Text(INext),),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
