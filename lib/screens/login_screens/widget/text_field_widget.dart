import 'package:Ryan/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/utils/common_functions.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final TextInputType? keyboardType;

  const TextFieldWidget({
    super.key,
    required this.controller,
    this.keyboardType,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: AppColors.thirdColor,
          ),
          textAlign: TextAlign.end,
        ),
        heightSpace(5),
        TextFormField(
          textAlign: TextAlign.right,
          controller: controller,
          keyboardType: keyboardType,
          textDirection: TextDirection.rtl,
          decoration: const InputDecoration(),
        ),
      ],
    );
  }
}

Widget verifyTextField(context) {
  return Expanded(
    child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 24),
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(width: 2.0), // Change the color and width as needed
          ),
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ]),
  );
}

Widget verifyCodeWidget(context) {
  return Row(children: [
    verifyTextField(context),
    widthSpace(24),
    verifyTextField(context),
    widthSpace(24),
    verifyTextField(context),
    widthSpace(24),
    verifyTextField(context),
    widthSpace(24),
    verifyTextField(context),
    widthSpace(24),
    verifyTextField(context),
  ]);
}
