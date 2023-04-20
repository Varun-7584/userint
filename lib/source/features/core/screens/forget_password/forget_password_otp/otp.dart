import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:userint/source/constants/sizes.dart';
import 'package:userint/source/constants/text_string.dart';
import '../../../../../constants/animations.dart';
import '../../../../../constants/colors.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Lottie.asset(IForgetPassPhoneAnimation),
                height: size.height * 0.3,
              ),
              Text(
                IOtpTitle,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                IOtpSubTitle.toUpperCase(),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "$IOtpMessage \nenterede-mail.com",
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20.0,
              ),
              OTPTextField(
                length: 6,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 50,
                style: TextStyle(
                    fontSize: 17
                ),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.underline,
                onCompleted: (code) {
                  print("Completed: $code");
                },
              ),
              SizedBox(height: 20.0,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {  },
                  child: Text(INext, style: TextStyle(
                    fontSize: 18,
                  ),),

                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
