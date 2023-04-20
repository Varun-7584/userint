import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:userint/source/features/core/screens/dashboard_screen/dashboard.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';
import '../forget_password/forget_password_options/forget_password_btn_widget.dart';
import '../forget_password/forget_password_options/forgt_password_model_bottom_sheet.dart';
import '../this_screen/this_screen_1.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: IFormHeight - 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                key: ValueKey('email'),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_outlined),
                    labelText: IEmail,
                    hintText: IEmail,
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: IFormHeight - 20,
              ),
              TextFormField(
                key: ValueKey('password'),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint_outlined),
                    labelText: IPassword,
                    hintText: IPassword,
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye_sharp),
                    )),
              ),
              SizedBox(
                height: IFormHeight - 20,
              ),

              ///
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      ForgetPasswordScreen.buildShowModalBottomSheet(context);
                    },
                    child: Text(IForgetPassword)),
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      key: ValueKey('Login_Button'),
                      onPressed: () {
                        Navigator.pop(context);
                        // Get.to(()=>ThisScreen());
                        Get.to(()=>Dashboard());
                      }, child: Text(ILogin)))
            ],
          ),
        ));
  }
}