import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sahara_app/screens/auth_screens/choose_signin_or_sign_up.dart';
import 'package:sahara_app/themes/app_colors.dart';
import 'package:sahara_app/themes/app_textStyle.dart';

class SplashWelcome extends StatefulWidget {
  const SplashWelcome({super.key});

  @override
  _SplashWelcomeState createState() => _SplashWelcomeState();
}

class _SplashWelcomeState extends State<SplashWelcome> {
  @override
  void initState() {
    super.initState();
    // Simulate a long-running task, such as loading data
    Timer(const Duration(seconds: 5), () {
      // Navigate to the main screen after the splash screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const ChooseSigninOrSignup()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            height: MediaQuery.sizeOf(context).height * 1,
            width: double.infinity,
            fit: BoxFit.cover,
            image: const AssetImage('assets/images/splash_screen/image 22.png'),
          ),
          Positioned(
              bottom: 10,
              left: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to 👋',
                    style: AppTextStyles.semiBoldStyle
                        .copyWith(color: AppColors.primaryWhite, fontSize: 30),
                  ),
                  Text(
                    'Sahara',
                    style: AppTextStyles.semiBoldStyle
                        .copyWith(color: AppColors.primaryWhite, fontSize: 72,fontWeight: FontWeight.w800),
                  ),
                  Text(
                    'Get the ultimate guide for Hajj and Umrah\nwith helpful tips through a reliable app.',
                    style: AppTextStyles.semiBoldStyle
                        .copyWith(color: AppColors.primaryWhite, fontSize: 16),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
