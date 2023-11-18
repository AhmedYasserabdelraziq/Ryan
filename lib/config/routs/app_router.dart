import 'package:Ryan/config/routs/routs_names.dart';
import 'package:Ryan/screens/common_questions_screen/view/common_question_screen.dart';
import 'package:Ryan/screens/complaints_submission_screen/view/complaints_submission_screen.dart';
import 'package:Ryan/screens/home_screen/view/home_screen.dart';
import 'package:Ryan/screens/login_screens/view/begin_phone_login_screen.dart';
import 'package:Ryan/screens/login_screens/view/phone_login_screen.dart';
import 'package:Ryan/screens/login_screens/view/verify_phone_number_screen.dart';
import 'package:Ryan/screens/medical_services_screen/view/medical_services_screen.dart';
import 'package:Ryan/screens/result_screen/view/result_screen.dart';
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
      case RouteName.RESULT:
        return MaterialPageRoute(
          builder: ((context) => const ResultScreen()),
        );
      case RouteName.COMMON_QUESTION:
        return MaterialPageRoute(
          builder: ((context) => const CommonQuestionScreen()),
        );
      case RouteName.MEDICAL_SERVICES:
        return MaterialPageRoute(
          builder: ((context) => const MedicalServices()),
        );
      case RouteName.COMPLAINTSSUBMISSOIN:
        return MaterialPageRoute(
          builder: ((context) => const ComplaintsSubmissionScreen()),
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
