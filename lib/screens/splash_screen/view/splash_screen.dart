import 'package:flutter/material.dart';

import '../../../services/services_locator.dart';
import '../view_model/splash_screen_viewmodel.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    final viewModel = locator<SplashScreenViewModel>();
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      viewModel.firstOpen(context);
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
