import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sahara_app/screens/auth_screens/sign_in_screen.dart';
import 'package:sahara_app/themes/app_colors.dart';
import 'package:sahara_app/themes/app_textStyle.dart';
import 'package:sahara_app/widgets/botton/custom_botton.dart';
import 'package:sahara_app/widgets/textfield/custom_textfield.dart';
import 'package:svg_flutter/svg.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController = TextEditingController();
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();

  void registration() async {
    if (_formKey.currentState!.validate()) {
      if (passwordController.text != passwordConfirmController.text) {
        Fluttertoast.showToast(msg: 'Passwords do not match');
        return;
      }

      setState(() {
        isLoading = true;
      });

      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);
        print(userCredential);
        setState(() {
          isLoading = false;
        });
        Fluttertoast.showToast(msg: 'Registered Successfully. Please Login');
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SignInScreen(),
          ),
        );
      } on FirebaseAuthException catch (e) {
        setState(() {
          isLoading = false;
        });
        if (e.code == 'weak-password') {
          print("Password Provided is too Weak");
          Fluttertoast.showToast(msg: 'Password Provided is too Weak');
        } else if (e.code == 'email-already-in-use') {
          print("Account Already exists");
          Fluttertoast.showToast(msg: 'Account Already exists');
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Form(
              key: _formKey,
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
                    ),
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage("assets/images/splash_screen/logo.png"),
                        ),
                        Text(
                          'Sign up',
                          style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.boldTextColor, fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    requiresHintText: 'Name',
                    requiresPrefixIcon: SvgPicture.asset(
                      'assets/images/auth_screen/Profile.svg',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  CustomTextField(
                    onChanged: (v) {
                      setState(() {});
                    },
                    requiresController: emailController,
                    requiresHintText: 'Email',
                    requiresPrefixIcon: SvgPicture.asset(
                      'assets/images/auth_screen/Message.svg',
                      height: 20,
                      width: 20,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }

                      return null;
                    },
                  ),
                  const SizedBox(height: 10,),
                  CustomTextField(
                    onChanged: (v) {
                      setState(() {});
                    },
                    requiresController: passwordController,
                    requiresHintText: 'Password',
                    requiresSuffixIcon: SvgPicture.asset(
                      'assets/images/auth_screen/Iconly Bold Hide.svg',
                      height: 20,
                      width: 20,
                    ),
                    requiresPrefixIcon: SvgPicture.asset(
                      'assets/images/auth_screen/Lock-4.svg',
                      height: 20,
                      width: 20,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10,),
                  CustomTextField(
                    onChanged: (v) {
                      setState(() {});
                    },
                    requiresController: passwordConfirmController,
                    requiresHintText: 'Confirm Password',
                    requiresSuffixIcon: SvgPicture.asset(
                      'assets/images/auth_screen/Iconly Bold Hide.svg',
                      height: 20,
                      width: 20,
                    ),
                    requiresPrefixIcon: SvgPicture.asset(
                      'assets/images/auth_screen/Lock-4.svg',
                      height: 20,
                      width: 20,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 40,),
                  isLoading ? Center(
                    child: LoadingAnimationWidget.hexagonDots(
                      size: 50,
                      color: const Color(0xFF27574E),
                    ),
                  ) : GestureDetector(
                    onTap: registration,
                    child: CustomButton(
                      buttonText: 'Sign Up',
                      buttonColor: emailController.text.isNotEmpty && passwordController.text.isNotEmpty && passwordConfirmController.text.isNotEmpty ? AppColors.mainColor : AppColors.mainLight,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Spacer(),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to sign in screen
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen()));
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account? ',
                          style: AppTextStyles.mediumStyle.copyWith(color: const Color(0xff84806D)),
                          children: [
                            TextSpan(
                              text: 'Sign In',
                              style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.borderColor, fontSize: 14),
                            )
                          ],
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
      ),
    );
  }
}
