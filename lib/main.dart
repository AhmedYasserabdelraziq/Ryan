import 'package:Ryan/screens/splash_screen/view/splash_screen.dart';
import 'package:Ryan/screens/splash_screen/view_model/splash_screen_viewmodel.dart';
import 'package:Ryan/services/services_locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'config/routs/app_router.dart';
import 'config/routs/routs_names.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: locator<SplashScreenViewModel>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ryan',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const SplashScreen(),
        initialRoute: RouteName.SPLASH,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
