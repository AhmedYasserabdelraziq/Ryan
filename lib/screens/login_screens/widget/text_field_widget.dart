import 'dart:ui' as ui;

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
          textAlign: TextAlign.right  ,
          controller: controller,
          keyboardType: keyboardType,
          textDirection: TextDirection.rtl,
          cursorColor: AppColors.secondaryColor,
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.secondaryColor,
                  width: 2.0), // Change the color and width as needed
            ),
          ),
        ),
      ],
    );
  }
}

Container verifyTextField() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: const Color(0x0f8a8585),
    ),
    width: 56,
    height: 56,
    child: TextFormField(
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 24),
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ]),
  );
}

Widget verifyCodeWidget() {
  return Directionality(
    textDirection: ui.TextDirection.ltr,
    child: Row(children: [
      verifyTextField(),
      widthSpace(24),
      verifyTextField(),
      widthSpace(24),
      verifyTextField(),
      widthSpace(24),
      verifyTextField(),
    ]),
  );
}
