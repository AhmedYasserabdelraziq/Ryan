import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';
class CardResultDetails extends StatelessWidget {
  const CardResultDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7)),
      child: Column(
        children: [
          ExpandablePanel(
            header: Padding(
                padding: const EdgeInsets.only(
                    right: 10, top: 10),
                child: Text(
                  'د/محمود بشير الهادي (مركز الهادي كلينك للاسنان)',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary),
                )),
            collapsed: Container(),
            expanded: Column(children: [
              ListTile(
                leading: Icon(
                  Icons.location_on_outlined,
                  color: AppColors.secondaryColor,
                ),
                title: Text(
                  'السلام-مرحلة اولي-ح-رقم228-ش ابو ذر الفاري ',
                  style: TextStyle(
                      color: AppColors.thirdColor,
                      fontSize: 20),
                ),
              ),ListTile(
                leading: Icon(
                  Icons.call,
                  color: AppColors.secondaryColor,
                ),
                title: Text(
                  '1129938888 ',
                  style: TextStyle(
                      color: AppColors.thirdColor,
                      fontSize: 20),
                ),
                //contentPadding: EdgeInsets.all(5),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
