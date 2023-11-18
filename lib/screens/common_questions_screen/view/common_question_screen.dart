import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';
import '../../../core/widget/drawer.dart';
import '../../../core/widget/search_and_button_search.dart';
import '../widget/question_details.dart';

class CommonQuestionScreen extends StatelessWidget {
  const CommonQuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'الأسئلة الشائعة',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      drawer: const HomeDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, bottom: 20),
            color: AppColors.whiteColor,
            child: SearchAndButtonSearch(
              isButtonSearch: false,
              color: AppColors.greyColor,
              iconColor: AppColors.blackColor,
              textTypingColor: AppColors.blackColor,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8.0, right: 15, bottom: 25),
            child: Text(
              'الأسئلة الشائعة',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (ctx, index) {
                  return const Padding(
                    padding: EdgeInsets.only(
                      bottom: 15.0,
                    ),
                    child: QuestionDetailsWidget(),
                  );
                }),
          )
        ],
      ),
    );
  }
}
