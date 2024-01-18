import 'package:flutter/material.dart';
import 'package:sahara_app/screens/auth_screens/sign_in_screen.dart';
import 'package:sahara_app/screens/auth_screens/sign_up_screen.dart';
import 'package:sahara_app/themes/app_colors.dart';
import 'package:sahara_app/themes/app_textStyle.dart';
import 'package:sahara_app/widgets/botton/custom_botton.dart';

class ChooseSigninOrSignup extends StatelessWidget {
  const ChooseSigninOrSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start
          ,mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 40,),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                      image: AssetImage(
                      "assets/images/splash_screen/logo.png")),
                  Text(
                    'Let’s you in',
                    style: AppTextStyles.semiBoldStyle
                        .copyWith(color: AppColors.boldTextColor, fontSize: 24),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical:10),
              decoration: BoxDecoration(
                color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color(0xffEEF1F7))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Image(image: AssetImage('assets/images/auth_screen/Group 18559.png')),
                const SizedBox(width: 15,),
                Text(
                  'Continue with Google',
                  style: AppTextStyles.semiBoldStyle
                      .copyWith(color: AppColors.boldTextColor, fontSize: 16),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward,color: Color(0xffC8D1E5),)
              ],
            ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical:10),
              decoration: BoxDecoration(
                color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color(0xffEEF1F7))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Image(image: AssetImage('assets/images/auth_screen/Group 18557.png')),
                const SizedBox(width: 15,),
                Text(
                  'Continue with Facebook',
                  style: AppTextStyles.semiBoldStyle
                      .copyWith(color: AppColors.boldTextColor, fontSize: 16),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward,color: Color(0xffC8D1E5),)
              ],
            ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical:10),
              decoration: BoxDecoration(
                color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color(0xffEEF1F7))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Image(image: AssetImage('assets/images/auth_screen/Shape.png')),
                const SizedBox(width: 15,),
                Text(
                  'Continue with Apple',
                  style: AppTextStyles.semiBoldStyle
                      .copyWith(color: AppColors.boldTextColor, fontSize: 16),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward,color: Color(0xffC8D1E5),)
              ],
            ),
            ),
            const SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(child: Divider(thickness: 1,height: 1,color: Color(0xffEEF1F7),)),
                const SizedBox(width: 15,),
                Text(
                  'or',
                  style: AppTextStyles.semiBoldStyle
                      .copyWith(color: const Color(0xff7D8CAC), fontSize: 14),
                ),     const SizedBox(width: 15,),

                const Expanded(child: Divider(thickness: 1,height: 1,color: Color(0xffEEF1F7),)),
              ],
            ),
            const SizedBox(height: 20,),
            GestureDetector(
                onTap: (){
                  // navigate to sign in screen
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignInScreen()));
                },
                child: const CustomButton(buttonText: 'Sign in with email',buttonColor: AppColors.mainColor,)),
            const Spacer(),
            Center(
              child: GestureDetector(
                onTap: (){

                  // Navigate to sign up screen
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpScreen()));

                },
                child: RichText(text: TextSpan(
                  text: 'Don’t have an account? ',
                  style: AppTextStyles.mediumStyle.copyWith(color: const Color(0xff84806D)),
                children: [
                  TextSpan(
                    text: 'Sign Up',
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
      ),),
    );
  }
}
