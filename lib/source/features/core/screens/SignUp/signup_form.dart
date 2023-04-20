import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';


class signup_form_widget extends StatelessWidget {
  const signup_form_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: IFormHeight-10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label : Text(IFullName),
                prefixIcon :Icon(Icons.person_outline_rounded),
              ),
            ),
            SizedBox(height: IFormHeight-10,),
            TextFormField(
                decoration: const InputDecoration(
                  label : Text(IEmailsignup),
                  prefixIcon :Icon(Icons.email_outlined),
                )
            ),
            SizedBox(height: IFormHeight-10,),
            TextFormField(
                decoration: const InputDecoration(
                  label : Text(IPhnNoSignup),
                  prefixIcon :Icon(Icons.phone_android_outlined),
                )
            ),
            SizedBox(height: IFormHeight-10,),
            TextFormField(
                decoration: const InputDecoration(
                  label : Text(IPasswordSignup),
                  prefixIcon :Icon(Icons.fingerprint_outlined),
                )
            ),
            SizedBox(height: IFormHeight-10,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){},
                  child: Text(ISignUpTitle.toUpperCase())),
            )
          ],
        ),
      ),
    );
  }
}
