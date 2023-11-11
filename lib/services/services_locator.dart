import 'package:get_it/get_it.dart';

import '../screens/splash_screen/view_model/splash_screen_viewmodel.dart';

GetIt locator = GetIt.instance;

Future setupLocator() async {
  locator.registerFactory(() => SplashScreenViewModel());
}
