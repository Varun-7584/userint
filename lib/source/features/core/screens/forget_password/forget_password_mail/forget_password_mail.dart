import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import 'package:userint/source/constants/sizes.dart';
import 'package:userint/source/features/core/screens/forget_password/forget_password_otp/otp.dart';
import '../../../../../constants/animations.dart';
import '../../../../../constants/colors.dart';
import '../../../../../constants/text_string.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? ISecondaryColor : IPrimaryColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(IDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image(image: const AssetImage(ILoginScreenImaage), height: size.height *0.2,),
              Container(
                child: Lottie.asset(IForgetPassAnimation),
                height: size.height * 0.3,
              ),
              Text(
                IForgetPasswordTxt,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: IDefaultSize - 20,
              ),
              Text(
                IForgetPasswordTxtSub,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(IEmail),
                      hintText: IEmail,
                      prefixIcon: Icon(Icons.mail_outline_rounded),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Get.to(() => const OTPScreen());
                      },
                      child: const Text(INext),
                    ),
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
