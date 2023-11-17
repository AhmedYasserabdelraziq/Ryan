import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';
class QuestionDetailsWidget extends StatelessWidget {
  const QuestionDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      child: ExpandablePanel(
        header: const Padding(
          padding: EdgeInsets.only(top: 8.0,right: 15),
          child: Text(
            'هل هذه الخدمة متاحه 24 ساعه 7 أيام في الأسبوع ؟',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        collapsed: Container(),
        expanded: const Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 5.0,right: 15),
                child: Text(
                  'فريقنا متاح 24 ساعه 7 أيام في الاسبوع لمساعدتك ودعمك في جميع طلباتك واستفساراتك',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
