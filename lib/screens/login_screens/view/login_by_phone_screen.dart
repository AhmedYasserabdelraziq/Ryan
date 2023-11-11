import 'package:Ryan/core/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/common_functions.dart';
import '../../../core/widget/app_buttons.dart';

class LoginByPhoneScreen extends StatelessWidget {
  const LoginByPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0, bottom: 50),
              child: Image.asset(
                'assets/images/logo.jpg',
                height: 350,
              ),
            ),
            SizedBox(
              width: 300,
              child: Text(
                textAlign: TextAlign.center,
                'مرحبا بكم في بيوند بلس خدماتنا متاحه ٢٤/۷ ',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondaryColor),
              ),
            ),
            heightSpace(60),
            primaryButton('تسجيل الدخول باستخدام رقم الهاتف',(){

            })
          ],
        ),
      ),
    );
  }
}
