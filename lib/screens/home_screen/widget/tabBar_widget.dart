import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';
class ListOfContainer extends StatelessWidget {
  const ListOfContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.all(5),
      height: 36,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.secondaryColor, width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Center(
        child: Text('جلوب ميد'),
      ),
    );
  }
}
