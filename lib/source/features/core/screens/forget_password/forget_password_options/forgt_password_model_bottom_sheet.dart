import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:userint/source/features/core/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import '../../../../../constants/colors.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';
import '../forget_password_mail/forget_password_phone.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen{

  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness== Brightness.dark;
    return showModalBottomSheet(
      backgroundColor: isDarkMode ? ISecondaryColor :IPrimaryColor,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      builder: (context) => Container(
        padding: EdgeInsets.all(IDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              IForgetpassTitle,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              IForgetpassSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: 30.0,
            ),
            ForgetPasswordButtonWidget(
              onTap: () {
                Navigator.pop(context);
                Get.to(()=> ForgetPasswordMailScreen());
              },
              btnIcon: Icons.mail_outline_rounded,
              title: IEmail,
              subTitle: IResetViaEmail,
            ),
            SizedBox(height: 20.0),

            ForgetPasswordButtonWidget(
              onTap:  () {
                Navigator.pop(context);
                Get.to(()=> ForgetPasswordPhoneScreen());
              },
              btnIcon: Icons.phone_outlined,
              title: IPhnNoforget,
              subTitle: IResetViaPhone,
            )
          ],
        ),
      ),
    );
  }

}
