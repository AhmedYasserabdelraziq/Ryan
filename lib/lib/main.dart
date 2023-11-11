import 'package:flutter/material.dart';

import 'config/routs/app_router.dart';
import 'config/routs/routs_names.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ryan',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: null,
    );
  }
}
