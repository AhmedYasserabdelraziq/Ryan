import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class SocialWidget extends StatelessWidget {
  final Color? color;
  final Widget leadingIcon;
  final IconData trailingIcon;
  final String title;
  final String supTitle;
  final TextStyle supTextStyle;
  final TextStyle titleTextStyle;

  const SocialWidget({
    super.key,
    this.color,
    required this.leadingIcon,
    required this.trailingIcon,
    required this.title,
    required this.supTitle,
    required this.supTextStyle,
    required this.titleTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.primary, width: 1),
      ),
      child: Center(
        child: ListTile(
          leading: leadingIcon,
          title: Text(
            title,
            style: titleTextStyle,
          ),
          subtitle: Text(supTitle, style: supTextStyle),
          trailing: Icon(
            trailingIcon,
          ),
        ),
      ),
    );
  }
}
