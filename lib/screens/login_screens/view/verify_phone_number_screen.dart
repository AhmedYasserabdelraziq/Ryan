import 'package:Ryan/config/routs/routs_names.dart';
import 'package:Ryan/core/utils/colors.dart';
import 'package:Ryan/core/utils/extintions.dart';
import 'package:Ryan/core/widget/app_buttons.dart';
import 'package:Ryan/screens/login_screens/widget/text_field_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/common_functions.dart';

class VerifyPhoneScreen extends StatelessWidget {
  const VerifyPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(right: 15.0, left: 15.0, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'أدخل الرمز المكون من ٦ أرقام الذي أرسل لك',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            heightSpace(30),
            verifyCodeWidget(),
            heightSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'أعد ارسال الرمز',
                  style: TextStyle(
                    decorationColor: AppColors.secondaryColor,
                    color: AppColors.secondaryColor,
                    decoration: TextDecoration.underline,
                  ),
                ).onTap(() {
                  Navigator.of(context).pushReplacementNamed(RouteName.PHONE_LOGIN);
                })
              ],
            ),
            Expanded(child: heightSpace(1)),
            primaryButton(title: 'متابعه', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
