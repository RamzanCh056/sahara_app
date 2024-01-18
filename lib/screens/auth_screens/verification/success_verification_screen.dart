import 'package:flutter/material.dart';
import 'package:sahara_app/screens/auth_screens/sign_in_screen.dart';
import 'package:sahara_app/themes/app_colors.dart';
import 'package:sahara_app/widgets/botton/custom_botton.dart';

import '../../../themes/app_textStyle.dart';


class SuccessfulVerificationScreen extends StatelessWidget {
  const SuccessfulVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,children: [
            const Spacer(),
            const Image(image: AssetImage("assets/images/auth_screen/Group 27.png")),
            const SizedBox(height: 20,),
            Text(
              'Account Created Successfully',
              style: AppTextStyles.boldStyle.copyWith(
                  color: AppColors.boldTextColor, fontSize: 20),
            ),
            const Spacer(),
            GestureDetector(
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignInScreen()));
                },
                child: const CustomButton(buttonText: 'Go to your account',buttonColor: AppColors.mainColor,))

          ],
          ),
        ),
      ),));
  }
}
