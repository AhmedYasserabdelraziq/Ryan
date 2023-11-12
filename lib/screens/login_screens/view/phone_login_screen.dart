import 'package:Ryan/core/utils/common_functions.dart';
import 'package:Ryan/core/widget/app_buttons.dart';
import 'package:Ryan/screens/login_screens/widget/text_field_widget.dart';
import 'package:Ryan/services/services_locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/phone_login_screen_view_model.dart';

class PhoneLoginScreen extends StatelessWidget {
  const PhoneLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (BuildContext context) => locator<LoginByPhoneViewModel>(),
        child: const PhoneLoginView());
  }
}

class PhoneLoginView extends StatelessWidget {
  const PhoneLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'أدخل رقم هاتفك المحمول',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            heightSpace(30),
            Consumer<LoginByPhoneViewModel>(
              builder: (ctx, viewModel, _) {
                return TextFieldWidget(
                  controller: viewModel.phoneController,
                  title: 'الهاتف المحمول',
                  keyboardType: TextInputType.phone,
                );
              },
            ),
            Expanded(
              child: heightSpace(1),
            ),
            primaryButton(
              title: 'متابعه',
              onPressed: () {},
              //width:double.infinity,
              // height: 0,
            )
          ],
        ),
      ),
    );
  }
}
