import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sahara_app/screens/splash_screen/splash_welcome.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a long-running task, such as loading data
    Timer(const Duration(seconds: 4), () {
      // Navigate to the main screen after the splash screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>const SplashWelcome()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Image
              (
              height:250 ,
              width: 250,
              image: AssetImage(
                'assets/images/splash_screen/image 2.png'
              ),
            ),
            const Spacer(),
        Center(
          child: LoadingAnimationWidget.hexagonDots(
            size: 50, color: const Color(0xFF27574E),
          ),
        ),
          const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}