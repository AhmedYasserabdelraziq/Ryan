import 'package:Ryan/config/routs/routs_names.dart';
import 'package:Ryan/core/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/common_functions.dart';
import '../../../core/widget/app_buttons.dart';

class LoginByPhoneScreen extends StatelessWidget {
  const LoginByPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.jpg',
              height: 350,
            ),heightSpace(50),
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
            primaryButton(
              title: 'تسجيل الدخول باستخدام رقم الهاتف',
              onPressed: () {
                Navigator.of(context).pushNamed(RouteName.PHONE_LOGIN);
              },
               //width:double.infinity,
              // height: 0,
            )
          ],
        ),
      ),
    );
  }
}
