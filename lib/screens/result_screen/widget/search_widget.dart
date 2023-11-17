import 'package:Ryan/screens/result_screen/view_model/result_screen_view_model.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';
import '../../../core/utils/common_functions.dart';


class SearchWidget extends StatelessWidget {
 final ResultScreenViewModel viewModel;
  const SearchWidget({
    super.key, required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
              minimumSize:
              const MaterialStatePropertyAll(Size(70, 0)),
              backgroundColor: MaterialStatePropertyAll(
                  AppColors.redColor)),
          child: const Text(
            'للتأمين',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        widthSpace(20),
        Expanded(
          child: SizedBox(
            height: 50,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.greyColor,
                  width: .5,
                ),
                color: AppColors.primary,
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: viewModel.searchController,
                      style: TextStyle(
                        color: AppColors.whiteColor,
                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: AppColors.whiteColor,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
