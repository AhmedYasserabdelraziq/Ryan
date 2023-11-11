import 'package:flutter/material.dart';

import '../utils/colors.dart';

Widget primaryButton(String title,void Function() onPressed) {
  return ElevatedButton(
    style: ButtonStyle(
      // minimumSize: const MaterialStatePropertyAll(
      //   Size(350, 45),
      // ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      alignment: Alignment.center,
      backgroundColor: MaterialStatePropertyAll(AppColors.primary),
    ),
    onPressed: onPressed,
    child: Text(
      title,
      style: TextStyle(
        color: AppColors.whiteColor,
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),
    ),
  );
}
