import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sahara_app/screens/splash_screen/splash_screen.dart';
import 'package:sahara_app/themes/app_colors.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> initialization = Firebase.initializeApp();
   MyApp({super.key});
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


