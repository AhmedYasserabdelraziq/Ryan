import 'package:Ryan/config/routs/routs_names.dart';
import 'package:Ryan/screens/home_screen/view/home_screen.dart';
import 'package:Ryan/screens/login_screens/view/begin_phone_login_screen.dart';
import 'package:Ryan/screens/login_screens/view/phone_login_screen.dart';
import 'package:Ryan/screens/login_screens/view/verify_phone_number_screen.dart';
import 'package:flutter/material.dart';

import '../../screens/splash_screen/view/splash_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.SPLASH:
        return MaterialPageRoute(
          builder: ((context) => const SplashScreen()),
        );
      case RouteName.BEGIN_PHONE_LOGIN:
        return MaterialPageRoute(
          builder: ((context) => const LoginByPhoneScreen()),
        );
      case RouteName.PHONE_LOGIN:
        return MaterialPageRoute(
          builder: ((context) => const PhoneLoginScreen()),
        );
      case RouteName.VERIFY_PHONE:
        return MaterialPageRoute(
          builder: ((context) => const VerifyPhoneScreen()),
        );
      case RouteName.HOME:
        return MaterialPageRoute(
          builder: ((context) => const HomeScreen()),
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
