import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/services_locator.dart';
import '../view_model/splash_screen_viewmodel.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) => locator<SplashScreenViewModel>(),
        child: const SplashView());
  }
}

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    final viewModel = locator<SplashScreenViewModel>();
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      viewModel.splashOpen(context);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/images/logo.jpg'),
          )
        ],
      ),
    );
  }
}
