import 'package:Ryan/core/utils/common_functions.dart';
import 'package:Ryan/screens/result_screen/view_model/result_screen_view_model.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/utils/colors.dart';
import '../widget/search_widget.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ResultScreenViewModel(),
      child: const ResultView(),
    );
  }
}

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child:
                  Consumer<ResultScreenViewModel>(builder: (ctx, viewModel, _) {
                return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'اكتشف',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: AppColors.fourthColor,
                        ),
                      ),
                      Text(
                        'شبكتك الطبية',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      heightSpace(10),
                      SearchWidget(viewModel: viewModel),

                    ]);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
