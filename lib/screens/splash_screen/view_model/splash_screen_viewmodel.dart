import 'package:flutter/material.dart';

import '../../../config/routs/routs_names.dart';

class SplashScreenViewModel extends ChangeNotifier {
  void firstOpen(context) {
    Navigator.of(context).pushNamed(RouteName.BEGIN_PHONE_LOGIN);
  }
}
