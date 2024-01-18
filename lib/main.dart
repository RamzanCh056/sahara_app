import 'package:flutter/material.dart';
import 'package:sahara_app/screens/splash_screen/splash_screen.dart';
import 'package:sahara_app/themes/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primaryWhite
      ),
      home: const SplashScreen(),
    );
  }
}


