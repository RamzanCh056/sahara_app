import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:sahara_app/screens/auth_screens/reset_password/reset_success.dart';
import 'package:svg_flutter/svg.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/app_textStyle.dart';
import '../../../widgets/botton/custom_botton.dart';
import '../../../widgets/textfield/custom_textfield.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController = TextEditingController();
  bool status=false;



  @override
  void dispose() {
    passwordController.dispose();
    passwordConfirmController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height*0.93,
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: AppColors.primaryBlack,
                        )),
                    const SizedBox(height: 10,),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                              image: AssetImage(
                                  "assets/images/auth_screen/reset_password/Group 1000002206.png")),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            'Create new password',
                            style: AppTextStyles.boldStyle.copyWith(
                              color: AppColors.boldTextColor,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
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
                    const SizedBox(height: 10,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
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
                    ],
                    ),

                    const Spacer(),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ResetSuccessful()));
                        },

                        child
                            : CustomButton(buttonText: 'Continue',buttonColor: passwordController.text.isNotEmpty && passwordConfirmController.text.isNotEmpty? AppColors.mainColor:AppColors.mainLight,)),

                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
