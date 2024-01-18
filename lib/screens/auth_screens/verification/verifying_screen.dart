import 'package:flutter/material.dart';
import 'package:sahara_app/screens/auth_screens/verification/success_verification_screen.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/app_textStyle.dart';
import '../../../widgets/botton/custom_botton.dart';

class VerifyingScreen extends StatefulWidget {
  const VerifyingScreen({super.key});

  @override
  State<VerifyingScreen> createState() => _VerifyingScreenState();
}

class _VerifyingScreenState extends State<VerifyingScreen> {
  final TextEditingController verifyOne = TextEditingController();
  final TextEditingController verifyTwo = TextEditingController();
  final TextEditingController verifyThree = TextEditingController();
  final TextEditingController verifyFour = TextEditingController();

  final FocusNode _isFocus = FocusNode();
  final FocusNode _isFocusOne = FocusNode();
  final FocusNode _isFocusTwo = FocusNode();
  final FocusNode _isFocusThree = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
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
                          image: AssetImage(
                              "assets/images/splash_screen/logo.png")),
                      Text(
                        'Verification',
                        style: AppTextStyles.semiBoldStyle.copyWith(
                            color: AppColors.boldTextColor, fontSize: 24),
                      ),
                      Text(
                        'We’ve send you the verification code on',
                        style: AppTextStyles.regularStyle.copyWith(
                            color: AppColors.borderColor, fontSize: 15),
                      ),
                      Text(
                        'bscs-fa19-104@tuf.edu.pk',
                        style: AppTextStyles.semiBoldStyle.copyWith(
                            color: AppColors.borderColor, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.15,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border: Border.all(
                              color: _isFocus.hasFocus
                                  ? const Color(0xff84806D)
                                  : const Color(0xffE4DFDF))),
                      child: Center(
                        child: TextField(
                          scrollPadding: EdgeInsets.zero,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          focusNode: _isFocus,
                          controller: verifyOne,
                          onChanged: (v) {
                            setState(() {});
                          },
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              counterText: '',
                              fillColor: Colors.white,
                              filled: true,
                              border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide:
                                    const BorderSide(color: Color(0xffC8D1E5)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: const BorderSide(
                                    color: AppColors.mainColor),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide:
                                    const BorderSide(color: Color(0xffC8D1E5)),
                              )),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.15,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border: Border.all(
                              color: _isFocusOne.hasFocus
                                  ? const Color(0xff84806D)
                                  : const Color(0xffE4DFDF))),
                      child: Center(
                        child: TextField(
                          scrollPadding: EdgeInsets.zero,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          focusNode: _isFocusOne,
                          controller: verifyTwo,
                          onChanged: (w) {
                            setState(() {});
                          },
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              counterText: '',
                              fillColor: Colors.white,
                              filled: true,
                              border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide:
                                    const BorderSide(color: Color(0xffC8D1E5)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: const BorderSide(
                                    color: AppColors.mainColor),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide:
                                    const BorderSide(color: Color(0xffC8D1E5)),
                              )),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.15,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border: Border.all(
                              color: _isFocusTwo.hasFocus
                                  ? const Color(0xff84806D)
                                  : const Color(0xffE4DFDF))),
                      child: Center(
                        child: TextField(
                          scrollPadding: EdgeInsets.zero,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          focusNode: _isFocusTwo,
                          controller: verifyThree,
                          onChanged: (x) {
                            setState(() {});
                          },
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              counterText: '',
                              fillColor: Colors.white,
                              filled: true,
                              border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide:
                                    const BorderSide(color: Color(0xffC8D1E5)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: const BorderSide(
                                    color: AppColors.mainColor),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide:
                                    const BorderSide(color: Color(0xffC8D1E5)),
                              )),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.15,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border: Border.all(
                              color: _isFocusThree.hasFocus
                                  ? const Color(0xff84806D)
                                  : const Color(0xffE4DFDF))),
                      child: Center(
                        child: TextField(
                          scrollPadding: EdgeInsets.zero,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          focusNode: _isFocusThree,
                          controller: verifyFour,
                          onChanged: (y) {
                            setState(() {});
                          },
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              counterText: '',
                              fillColor: Colors.white,
                              filled: true,
                              border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide:
                                    const BorderSide(color: Color(0xffC8D1E5)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: const BorderSide(
                                    color: AppColors.mainColor),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide:
                                    const BorderSide(color: Color(0xffC8D1E5)),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                    onTap: () {
                      // Navigate to next Screen i-e Congratulation
Navigator.push(context, MaterialPageRoute(builder: (context)=> const SuccessfulVerificationScreen()));
                    },
                    child: CustomButton(
                      buttonText: 'Submit',
                      buttonColor: verifyOne.text.isNotEmpty && verifyTwo.text.isNotEmpty  && verifyThree.text.isNotEmpty && verifyFour.text.isNotEmpty ? AppColors.mainColor:AppColors.mainLight,
                    )),
                const SizedBox(
                  height: 20,
                ),

                Center(
                  child: GestureDetector(
                    child: RichText(
                      text: TextSpan(
                          text: 'Resend code in',
                          style: AppTextStyles.mediumStyle
                              .copyWith(color:AppColors.hintTextColor ),
                          children: [
                            TextSpan(
                                text: ' 00:60',
                                style: AppTextStyles.semiBoldStyle.copyWith(
                                    color: const Color(0xff2B4E41) , fontSize: 14))
                          ]),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
