import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:userint/source/features/core/screens/SignUp/signup_screen.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("OR"),
        const SizedBox(
          height: IFormHeight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: Image(
              image: AssetImage(GoggleLog),
              width: 40,
              height: 40,
            ),
            label: Text(ISignInWithGoogle),
          ),
        ),
        const SizedBox(
          height: IFormHeight - 20,
        ),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
              Get.to(() => SignUpScreen());
            },
            child: Text.rich(TextSpan(
                text: IDontHaveAnAccount,
                style: Theme.of(context).textTheme.bodyLarge,
                children: const [
                  TextSpan(
                      text: ISignUptext,
                      style: TextStyle(color: Colors.lightBlueAccent)),
                ])))
      ],
    );
  }
}
