import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sahara_app/screens/auth_screens/sign_in_screen.dart';
import 'package:sahara_app/screens/auth_screens/verification/verifying_screen.dart';
import 'package:sahara_app/themes/app_colors.dart';
import 'package:sahara_app/themes/app_textStyle.dart';
import 'package:sahara_app/widgets/botton/custom_botton.dart';
import 'package:sahara_app/widgets/textfield/custom_textfield.dart';
import 'package:svg_flutter/svg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController = TextEditingController();

  bool _isloading=false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    passwordConfirmController.dispose();
    super.dispose();
  }
  bool status=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height*1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: AppColors.primaryBlack,
                    )),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                          image:
                          AssetImage("assets/images/splash_screen/logo.png")),
                      Text(
                        'Sign up',
                        style: AppTextStyles.semiBoldStyle.copyWith(
                            color: AppColors.boldTextColor, fontSize: 24),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  requiresHintText: 'Name',
                  requiresPrefixIcon:
                  SvgPicture.asset(
                      height:20,width:20,
                      'assets/images/auth_screen/Profile.svg'),
                ),
                const SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (v){
                    setState(() {

                    });
                  },
                  requiresController: emailController,
                  requiresHintText: 'Email',
                  requiresPrefixIcon:
                  SvgPicture.asset(
                      height:20,width:20,
                      'assets/images/auth_screen/Message.svg'),
                ),
                const SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (v){
                    setState(() {

                    });
                  },
                  requiresController: passwordController,
                  requiresHintText: 'Password',
                  requiresSuffixIcon: SvgPicture.asset(
                      height:20,width:20,
                      'assets/images/auth_screen/Iconly Bold Hide.svg'),
                  requiresPrefixIcon:
                  SvgPicture.asset(
                      height:20,width:20,
                      'assets/images/auth_screen/Lock-4.svg'),
                ),
                const SizedBox(height: 10,),
                CustomTextField(
                  onChanged: (v){
                    setState(() {

                    });
                  },
                  requiresController: passwordConfirmController,
                  requiresHintText: 'Confirm Password',
                  requiresSuffixIcon: SvgPicture.asset(
                      height:20,width:20,
                      'assets/images/auth_screen/Iconly Bold Hide.svg'),
                  requiresPrefixIcon:
                  SvgPicture.asset(
                      height:20,width:20,
                      'assets/images/auth_screen/Lock-4.svg'),
                ),
                const SizedBox(height: 40,),
                GestureDetector(
                    onTap: () {
                      // Set _isLoading to true when the sign-up button is pressed
                      setState(() {
                        _isloading = true;
                      });
                      // Simulate the sign-up process with a 4-second delay
                      Future.delayed(const Duration(seconds: 4), () {
                        // Set _isLoading to false when the sign-up process is complete
                        setState(() {
                          _isloading = false;
                        });

                        // Navigate to the next screen (VerifyingScreen)
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const VerifyingScreen()));
                      });
                    },
                    child:  CustomButton(buttonText: 'Sign Up',buttonColor: emailController.text.isNotEmpty && passwordController.text.isNotEmpty && passwordConfirmController.text.isNotEmpty? AppColors.mainColor:AppColors.mainLight,)),
                const SizedBox(height: 20,),
                const Spacer(),
                _isloading?Center(
                  child: LoadingAnimationWidget.hexagonDots(
                    size: 50, color: const Color(0xFF27574E),
                  ),
                ):const SizedBox(),

                const Spacer(),
                Center(
                  child: GestureDetector(
                    onTap: (){

                      // Navigate to sign in screen
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInScreen()));

                    },
                    child: RichText(text: TextSpan(
                        text: 'Already have an account? ',
                        style: AppTextStyles.mediumStyle.copyWith(color: const Color(0xff84806D)),
                        children: [
                          TextSpan(
                              text: 'Sign In',
                              style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.borderColor,fontSize: 14)
                          )
                        ]
                    ),

                    ),
                  ),
                ),
                const SizedBox(height: 10,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
