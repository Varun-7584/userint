import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:userint/source/constants/sizes.dart';
import 'package:userint/source/features/core/screens/login/login_screen.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_string.dart';


class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: IFormHeight-25,),
        const Text("OR"),
        SizedBox(height: IFormHeight-20,),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: (){},
            icon:  Image(image: AssetImage(GoggleLog),
                width: 20.0),
            label: const Text(ISignInWithGoogle),),
        ),
        TextButton(
            onPressed: (){
              Navigator.pop(context);
              Get.to(()=>LoginScreen());
            },
            child: Text.rich(
                TextSpan(
                    children: [TextSpan(text: IAlreadyHaveAnAccount ,
                      style: Theme.of(context).textTheme.bodyLarge,),
                      TextSpan(
                        text: ILogin.toUpperCase(),
                      )
                    ]
                )
            ))
      ],
    );
  }
}
