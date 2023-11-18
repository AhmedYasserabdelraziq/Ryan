import 'package:Ryan/screens/result_screen/view_model/result_screen_view_model.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';
import '../../../core/utils/common_functions.dart';

class SearchAndButtonSearch extends StatelessWidget {
  final ResultScreenViewModel? viewModel;
  final BorderRadius borderRadius;
  final bool isButtonSearch;
  final Color color;
  final Color iconColor;
  final Color textTypingColor;

  const SearchAndButtonSearch({
    super.key,
    this.viewModel,
    required this.isButtonSearch,
    required this.color,
    required this.textTypingColor,
    required this.iconColor,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isButtonSearch
            ? TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    minimumSize: const MaterialStatePropertyAll(Size(70, 40)),
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.redColor)),
                child: const Text(
                  'للتأمين',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              )
            : Container(),
        widthSpace(20),
        Expanded(
          child: SizedBox(
            height: 50,
            child: Container(
              decoration: BoxDecoration(
                  border: isButtonSearch
                      ? Border.all(
                          color: AppColors.fourthColor,
                          width: .5,
                        )
                      : null,
                  color: color,
                  borderRadius: borderRadius),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.search,
                      color: iconColor,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: viewModel?.searchController,
                      style: TextStyle(
                        color: textTypingColor,
                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
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
