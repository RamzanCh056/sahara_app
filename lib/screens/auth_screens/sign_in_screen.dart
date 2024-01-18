import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:sahara_app/screens/auth_screens/reset_password/forgot_password.dart';
import 'package:sahara_app/screens/auth_screens/sign_up_screen.dart';
import 'package:sahara_app/themes/app_colors.dart';
import 'package:sahara_app/themes/app_textStyle.dart';
import 'package:sahara_app/widgets/botton/custom_botton.dart';
import 'package:sahara_app/widgets/textfield/custom_textfield.dart';
import 'package:svg_flutter/svg.dart';

import '../home_screen/home_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
bool status=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                        'Sign in',
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
                const SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,children: [

                  FlutterSwitch(
                  width: 50.0,
                  height: 25.0,
                  activeIcon:const Icon(Icons.done,color: Colors.black,),
                  activeText: '',
                  inactiveText: '',

                  activeColor: AppColors.greenColor,
                  toggleSize: 22.0,
                  value: status,
                  borderRadius: 12.0,
                  showOnOff: true,
                  onToggle: (val) {
                    setState(() {
                      status = val;
                    });
                  },
                ),
                  const SizedBox(width: 15,),
                  Text(
                    'Remember Me',
                    style: AppTextStyles.regularStyle.copyWith(
                        color: AppColors.boldTextColor, fontSize: 13),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgotPassword()));
                    },
                    child: Text(
                      'Forgot Password?',
                      style: AppTextStyles.regularStyle.copyWith(
                          color: AppColors.boldTextColor, fontSize: 13),
                    ),
                  ),
                ],
                ),
                const SizedBox(height: 40,),
                GestureDetector(
                    onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>  HomeScreen()));
                    },
                    child:  CustomButton(buttonText: 'Sign in',buttonColor: emailController.text.isNotEmpty && passwordController.text.isNotEmpty? AppColors.mainColor:AppColors.mainLight,)),
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
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                        shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xffEEF1F7))
                      ),
                        child: const Image(image: AssetImage('assets/images/auth_screen/Group 18559.png'),),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: const Color(0xffEEF1F7))
                        ),
                        child: const Image(image: AssetImage('assets/images/auth_screen/Group 18557.png'),),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: const Color(0xffEEF1F7))
                        ),
                        child: const Image(image: AssetImage('assets/images/auth_screen/Shape.png'),),
                      ),

                    ],
                  ),
                ),

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
          ),
        ),
      ),
    );
  }
}
