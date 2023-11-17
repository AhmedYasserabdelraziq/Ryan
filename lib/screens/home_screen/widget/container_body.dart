import 'package:Ryan/config/routs/routs_names.dart';
import 'package:Ryan/core/utils/common_functions.dart';
import 'package:Ryan/core/widget/app_buttons.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';
import '../view_model/home_screen_view_model.dart';

class ContainerBody extends StatelessWidget {
  final HomeScreenViewModel viewModel;

  const ContainerBody({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(top: 19, right: 12, left: 12, bottom: 8),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Column(
          children: [
            Wrap(
              children: titleWithDropDownButton(),
            ),
            heightSpace(5),
            Row(
              children: [
                Text(
                  '*',
                  style: TextStyle(color: AppColors.redColor),
                ),
                widthSpace(3),
                const Expanded(
                  child: Text(
                    'شركة الخدمة الطبية هي شركة متعاقد معها من قبل شركات التأمين الخاضعة لرقابة الهيئة العامة للرقابة المالية',
                  ),
                ),
              ],
            ),
            heightSpace(15),
            primaryButton(
                title: 'بحث',
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteName.RESULT);
                })
          ],
        ),
      ),
    );
  }

  List<Widget> titleWithDropDownButton() {
    return List.generate(
      5,
      (index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              viewModel.titles[index],
              style: const TextStyle(fontSize: 18),
            ),
          ),
          DropdownButton(
            value: viewModel.selectedValueGroup[index],
            icon: const Icon(Icons.arrow_drop_down),
            elevation: 16,
            isExpanded: true,
            style: TextStyle(color: AppColors.thirdColor),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            underline: Container(
              height: 2,
              color: AppColors.greyColor,
            ),
            onChanged: (value) {
              viewModel.selectValues(value, index);
            },
            items: viewModel.dropValues[index]
                .map<DropdownMenuItem>(
                  (value) => DropdownMenuItem(
                    value: value,
                    child: Text(value.toString()),
                  ),
                )
                .toList(),
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}
