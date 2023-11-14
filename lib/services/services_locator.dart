import 'package:Ryan/screens/home_screen/view_model/home_screen_view_model.dart';
import 'package:get_it/get_it.dart';

import '../screens/login_screens/view_model/phone_login_screen_view_model.dart';
import '../screens/splash_screen/view_model/splash_screen_viewmodel.dart';

GetIt locator = GetIt.instance;

Future setupLocator() async {
  locator.registerFactory(() => SplashScreenViewModel());
  locator.registerFactory(() => LoginByPhoneViewModel());
  locator.registerFactory(() => HomeScreenViewModel());
}
