import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sahara_app/screens/auth_screens/reset_password/verification_for_forgot.dart';
import 'package:sahara_app/themes/app_colors.dart';
import 'package:svg_flutter/svg.dart';

import '../../../themes/app_textStyle.dart';
import '../../../widgets/botton/custom_botton.dart';
import '../../../widgets/textfield/custom_textfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  bool _isloading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryWhite,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back,
            color: AppColors.primaryBlack,
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  const Image(
                      image: AssetImage(
                          "assets/images/auth_screen/reset_password/Group 1000002195.png")),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Forgot Password',
                    style: AppTextStyles.boldStyle.copyWith(
                      color: AppColors.boldTextColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Enter your email address to get a code to\nreset your password!',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.regularStyle.copyWith(
                      fontSize: 15,
                      color: AppColors.borderColor,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomTextField(
                    onChanged: (v) {
                      setState(() {});
                    },
                    requiresController: emailController,
                    requiresHintText: 'Email',
                    requiresPrefixIcon: SvgPicture.asset(
                        height: 20,
                        width: 20,
                        'assets/images/auth_screen/Message.svg'),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                      onTap: () {
                        // Set _isLoading to true when the getCode button is pressed
                        setState(() {
                          _isloading = true;
                        });
                        // Simulate the sign-up process with a 4-second delay
                        Future.delayed(const Duration(seconds: 4), () {
                          // Set _isLoading to false when the getcode process is complete
                          setState(() {
                            _isloading = false;
                          });

                          // Navigate to the next screen (VerifyingScreen)
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const VerificationForForgot()));
                        });
                      },
                      child: CustomButton(
                        buttonText: 'Get Code',
                        buttonColor: emailController.text.isNotEmpty
                            ? AppColors.mainColor
                            : AppColors.mainLight,
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  _isloading
                      ? Center(
                          child: LoadingAnimationWidget.hexagonDots(
                            size: 50,
                            color: const Color(0xFF27574E),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
