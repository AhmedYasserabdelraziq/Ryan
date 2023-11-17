import 'package:flutter/material.dart';

class HomeScreenViewModel extends ChangeNotifier {
  static int selectDropValueGroup1 = 1;
  static int selectDropValueGroup2 = 1;
  static int selectDropValueGroup3 = 1;
  static int selectDropValueGroup4 = 1;
  static int selectDropValueGroup5 = 1;

  List<int> selectedValueGroup = [
    selectDropValueGroup1,
    selectDropValueGroup2,
    selectDropValueGroup3,
    selectDropValueGroup4,
    selectDropValueGroup5,

  ];
  List titles = ['فئه', 'محافظة', 'منطقة', 'نوع مقدم الخدمة', 'التخصص'];

  List<List<int>> dropValues = [
    [1, 2, 3, 4, 5, 6, 7, 8],
    [1, 2, 3, 4, 5, 6, 7, 8],
    [1, 2, 3, 4, 5, 6, 7, 8],
    [1, 2, 3, 4, 5, 6, 7, 8],
    [1, 2, 3, 4, 5, 6, 7, 8],
    [1, 2, 3, 4, 5, 6, 7, 8],
  ];

  selectValues(var selectValue, int index) {
    if (index == 0) {
      selectedValueGroup[0] = selectValue;
      print('$index $selectValue');
      notifyListeners();
    } else if (index == 1) {
      selectedValueGroup[1] = selectValue;
      print('$index $selectValue');
      notifyListeners();
    } else if (index == 2) {
      selectedValueGroup[2] = selectValue;
      print('$index $selectValue');
      notifyListeners();
    } else if (index == 3) {
      selectedValueGroup[3] = selectValue;
      print('$index $selectValue');
      notifyListeners();
    } else if (index == 4) {
      selectedValueGroup[4] = selectValue;
      print('$index $selectValue');
      notifyListeners();
    }
  }
}
