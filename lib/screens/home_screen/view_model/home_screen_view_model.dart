import 'package:flutter/material.dart';

class HomeScreenViewModel extends ChangeNotifier {
  String selectDropValue = '1';
  List titles = ['فئه', 'محافظة', 'منطقة', 'نوع مقدم الخدمة', 'التخصص'];

  List<String> body1 = ['1', '2', '3', '4', '5', '6', '7', '8'];

  // List body2 = [1, 2, 3, 4, 5, 6, 7, 8];
  // List body3 = [1, 2, 3, 4, 5, 6, 7, 8];
  // List body4 = [1, 2, 3, 4, 5, 6, 7, 8];
  // List body5 = [1, 2, 3, 4, 5, 6, 7, 8];

  void selectValues(String selectValue) {
    selectDropValue = selectValue;
    notifyListeners();
  }
}
