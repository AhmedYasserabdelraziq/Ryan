import 'package:Ryan/lib/core/utils/common_functions.dart';
import 'package:Ryan/lib/core/widget/app_buttons.dart';
import 'package:flutter/material.dart';

class LoginByPhoneScreen extends StatelessWidget {
  const LoginByPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/logo.jpg'),
          heightSpace(24),
        const Text('مرحبا بكم في بيوند بلس خدماتنا متاحه 7/24'),
          heightSpace(30),
          primaryButton('تسجيل الدخول برقم الهاتف')
        ],
      ),
    );
  }
}
