import 'package:Ryan/core/utils/colors.dart';
import 'package:Ryan/screens/result_screen/view/result_screen.dart';
import 'package:Ryan/screens/splash_screen/view/splash_screen.dart';
import 'package:Ryan/services/services_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'config/routs/app_router.dart';
import 'config/routs/routs_names.dart';

void main() async {
  Provider.debugCheckInvalidValueType = null;
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(
    const Directionality(
      textDirection: TextDirection.rtl,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('ar', 'AE'),
      supportedLocales: const [
        Locale('ar', 'AE'),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Ryan',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: AppColors.fourthColor,
        ),
        useMaterial3: true,
      ),
      initialRoute: RouteName.SPLASH,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
