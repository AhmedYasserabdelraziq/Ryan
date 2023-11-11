import 'package:Ryan/config/routs/routs_names.dart';
import 'package:Ryan/screens/login_screens/view/login_by_phone_screen.dart';
import 'package:flutter/material.dart';

import '../../screens/splash_screen/view/splash_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.SPLASH:
        return MaterialPageRoute(
          builder: ((context) => const SplashScreen()),
        );
      case RouteName.LOGIN_BY_PHONE:
        return MaterialPageRoute(
          builder: ((context) => const LoginByPhoneScreen()),
        );
      default:
        return notFound();
    }
  }

  static Route<dynamic> notFound() {
    return MaterialPageRoute(
      builder: ((context) => const Scaffold(
            body: Center(
              child: Text('Not Fount'),
            ),
          )),
    );
  }
}
