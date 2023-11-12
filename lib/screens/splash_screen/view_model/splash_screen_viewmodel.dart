import 'package:flutter/material.dart';

import '../../../config/routs/routs_names.dart';

class SplashScreenViewModel extends ChangeNotifier {
  void splashOpen(context) {
    Navigator.of(context).pushReplacementNamed(RouteName.BEGIN_PHONE_LOGIN);
  }
}
