import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:sahara_app/themes/app_colors.dart';
import 'package:svg_flutter/svg.dart';

import '../../../themes/app_textStyle.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  bool status=false;
  bool statusMode=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body:
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(
              clipBehavior: Clip.none,
              children: [


                Stack(
                  children: [
                    const Image(
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image:
                        AssetImage("assets/images/home_screen/Group 1000005865.png")),
                    Positioned(
                      top: 45,
                      left: 10,
                      right: 25,
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width*1,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child
                                    : const Icon(Icons.arrow_back,color: AppColors.primaryWhite,)),
                            const Spacer(),
                            Text(
                              'My Profile',
                              style: AppTextStyles.boldStyle.copyWith(
                                  color: const Color(0xffFFFFFF), fontSize: 16),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                   Padding(
                     padding: const EdgeInsets.only(top: 130),
                     child: Container(
                       width: MediaQuery.of(context).size.width * 1,
                       padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                       decoration: const BoxDecoration(
                           color: AppColors.primaryWhite,
                           borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(10),
                               topRight: Radius.circular(10))),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           const SizedBox(
                             height: 55,
                           ),
                           Center(
                             child: Text(
                               'Momin Hassan',
                               style: AppTextStyles.boldStyle.copyWith(
                                   color: const Color(0xFF212121),
                                   fontSize: 18),
                             ),
                           ),
                           const SizedBox(
                             height: 2,
                           ),
                           Center(
                             child: Text(
                               'bscs-fa19-104@tuf.edu.pk',
                               style: AppTextStyles.mediumStyle.copyWith(
                                   color: const Color(0xFF818CA3),
                                   fontSize: 12),
                             ),
                           ),
                           const SizedBox(
                             height: 25,
                           ),

                           Container(
                             width: double.infinity,
                             height: 73,
                             padding: const EdgeInsets.symmetric(
                                 horizontal: 10, vertical: 10),
                             decoration: BoxDecoration(
                               border: Border.all(color: const Color(0xff4C9F7D)),
                               color: const Color(0xFFFFFFFF),
                               borderRadius: BorderRadius.circular(12),
                             ),
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 const Image(
                                     image: AssetImage(
                                         "assets/images/home_screen/image 21.png")),
                                 const SizedBox(
                                   width: 15,
                                 ),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text(
                                       'Buy Premium',
                                       style: AppTextStyles.boldStyle.copyWith(
                                           color: const Color(0xFF4C9F7D),
                                           fontSize: 16),
                                     ),
                                     Text(
                                       'Enjoy an Ad free experience',
                                       style: AppTextStyles.regularStyle.copyWith(
                                           color: const Color(0xFF7D8CAC),
                                           fontSize: 12),
                                     ),
                                   ],
                                 ),
                                 const Spacer(),
                                 Container(
                                   width: 30,
                                   height: 30,
                                   decoration: const ShapeDecoration(
                                     color: Color(0xFFDDF7E8),
                                     shape: OvalBorder(),
                                   ),
                                   child: const Icon(
                                     Icons.arrow_forward,
                                     color: AppColors.mainColor,
                                     size: 15,
                                   ),
                                 )
                               ],
                             ),
                           ),
                           const SizedBox(height: 10,),
                           Container(
                             width: double.infinity,
                             height: 53,
                             padding: const EdgeInsets.symmetric(
                                 horizontal: 10, vertical: 10),
                             decoration: BoxDecoration(
                               border: Border.all(color: const Color(0xffD3DAEA)),
                               color: const Color(0xFFFFFFFF),
                               borderRadius: BorderRadius.circular(12),
                             ),
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 SvgPicture.asset(
                                         "assets/icons/Iconly Bold Profile.svg"),
                                 const SizedBox(
                                   width: 15,
                                 ),
                                 Text(
                                   'Edit Profile',
                                   style: AppTextStyles.mediumStyle.copyWith(
                                       color: const Color(0xFF212121),
                                       fontSize: 16),
                                 ),
                                 const Spacer(),
                                 const Icon(
                                   Icons.arrow_forward_ios,
                                   color: Color(0xffD3DAEA),
                                   size: 20,
                                 ),
                               ],
                             ),
                           ),


                           const SizedBox(height: 10,),
                           Container(
                             width: double.infinity,
                             height: 53,
                             padding: const EdgeInsets.symmetric(
                                 horizontal: 10, vertical: 10),
                             decoration: BoxDecoration(
                               border: Border.all(color: const Color(0xffD3DAEA)),
                               color: const Color(0xFFFFFFFF),
                               borderRadius: BorderRadius.circular(12),
                             ),
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 SvgPicture.asset(
                                     "assets/icons/Iconly Bold Notification.svg"),
                                 const SizedBox(
                                   width: 15,
                                 ),
                                 Text(
                                   'Notification',
                                   style: AppTextStyles.mediumStyle.copyWith(
                                       color: const Color(0xFF212121),
                                       fontSize: 16),
                                 ),
                                 Text(
                                   ' On',
                                   style: AppTextStyles.mediumStyle.copyWith(
                                       color: const Color(0xFF1C9E7D),
                                       fontSize: 12),
                                 ),
                                 const Spacer(),

                                 FlutterSwitch(
                                   width: 50.0,
                                   height: 25.0,
                                  activeText: '',
                                   inactiveText: '',
                                   activeColor: const Color(0xff1C9E7D),
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
                               ],
                             ),
                           ),

                           const SizedBox(height: 10,),
                           Container(
                             width: double.infinity,
                             height: 53,
                             padding: const EdgeInsets.symmetric(
                                 horizontal: 10, vertical: 10),
                             decoration: BoxDecoration(
                               border: Border.all(color: const Color(0xffD3DAEA)),
                               color: const Color(0xFFFFFFFF),
                               borderRadius: BorderRadius.circular(12),
                             ),
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 SvgPicture.asset(
                                     "assets/icons/image 97 (Traced).svg"),
                                 const SizedBox(
                                   width: 15,
                                 ),
                                 Text(
                                   'Dark Mode',
                                   style: AppTextStyles.mediumStyle.copyWith(
                                       color: const Color(0xFF212121),
                                       fontSize: 16),
                                 ),
                                 const Spacer(),
                                 FlutterSwitch(
                                   width: 50.0,
                                   height: 25.0,
                                   activeText: '',
                                   inactiveText: '',
                                   activeColor: const Color(0xff1C9E7D),
                                   toggleSize: 22.0,
                                   value: statusMode,
                                   borderRadius: 12.0,
                                   showOnOff: true,
                                   onToggle: (val) {
                                     setState(() {
                                       statusMode = val;
                                     });
                                   },
                                 ),
                               ],
                             ),
                           ),

                           const SizedBox(height: 10,),
                           Container(
                             width: double.infinity,
                             height: 53,
                             padding: const EdgeInsets.symmetric(
                                 horizontal: 10, vertical: 10),
                             decoration: BoxDecoration(
                               border: Border.all(color: const Color(0xffD3DAEA)),
                               color: const Color(0xFFFFFFFF),
                               borderRadius: BorderRadius.circular(12),
                             ),
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 SvgPicture.asset(
                                     "assets/icons/Subtract.svg"),
                                 const SizedBox(
                                   width: 15,
                                 ),
                                 Text(
                                   'Language',
                                   style: AppTextStyles.mediumStyle.copyWith(
                                       color: const Color(0xFF212121),
                                       fontSize: 16),
                                 ),
                                 const Spacer(),
                                 const Icon(
                                   Icons.arrow_forward_ios,
                                   color: Color(0xffD3DAEA),
                                   size: 20,
                                 ),
                               ],
                             ),
                           ),

                           const SizedBox(height: 10,),
                           Container(
                             width: double.infinity,
                             height: 53,
                             padding: const EdgeInsets.symmetric(
                                 horizontal: 10, vertical: 10),
                             decoration: BoxDecoration(
                               border: Border.all(color: const Color(0xffD3DAEA)),
                               color: const Color(0xFFFFFFFF),
                               borderRadius: BorderRadius.circular(12),
                             ),
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 SvgPicture.asset(
                                     "assets/icons/Vector.svg"),
                                 const SizedBox(
                                   width: 15,
                                 ),
                                 Text(
                                   'Privacy Policy & Terms',
                                   style: AppTextStyles.mediumStyle.copyWith(
                                       color: const Color(0xFF212121),
                                       fontSize: 16),
                                 ),
                                 const Spacer(),
                                 const Icon(
                                   Icons.arrow_forward_ios,
                                   color: Color(0xffD3DAEA),
                                   size: 20,
                                 ),
                               ],
                             ),
                           ),

                           const SizedBox(height: 10,),
                           Container(
                             width: double.infinity,
                             height: 53,
                             padding: const EdgeInsets.symmetric(
                                 horizontal: 10, vertical: 10),
                             decoration: BoxDecoration(
                               border: Border.all(color: const Color(0xffD3DAEA)),
                               color: const Color(0xFFFFFFFF),
                               borderRadius: BorderRadius.circular(12),
                             ),
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 SvgPicture.asset(
                                     "assets/icons/Vector (1).svg"),
                                 const SizedBox(
                                   width: 15,
                                 ),
                                 Text(
                                   'Help and Support',
                                   style: AppTextStyles.mediumStyle.copyWith(
                                       color: const Color(0xFF212121),
                                       fontSize: 16),
                                 ),
                                 const Spacer(),
                                 const Icon(
                                   Icons.arrow_forward_ios,
                                   color: Color(0xffD3DAEA),
                                   size: 20,
                                 ),
                               ],
                             ),
                           ),

                           const SizedBox(height: 10,),
                           Container(
                             width: double.infinity,
                             height: 53,
                             padding: const EdgeInsets.symmetric(
                                 horizontal: 10, vertical: 10),
                             decoration: BoxDecoration(
                               border: Border.all(color: const Color(0xffD3DAEA)),
                               color: const Color(0xFFFFFFFF),
                               borderRadius: BorderRadius.circular(12),
                             ),
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 SvgPicture.asset(
                                     "assets/icons/Path 34179.svg"),
                                 const SizedBox(
                                   width: 15,
                                 ),
                                 Text(
                                   'Refer a Friend',
                                   style: AppTextStyles.mediumStyle.copyWith(
                                       color: const Color(0xFF212121),
                                       fontSize: 16),
                                 ),
                                 const Spacer(),
                                 const Icon(
                                   Icons.arrow_forward_ios,
                                   color: Color(0xffD3DAEA),
                                   size: 20,
                                 ),
                               ],
                             ),
                           ),

                           const SizedBox(height: 10,),
                           Container(
                             width: double.infinity,
                             height: 53,
                             padding: const EdgeInsets.symmetric(
                                 horizontal: 10, vertical: 10),
                             decoration: BoxDecoration(
                               border: Border.all(color: const Color(0xffD3DAEA)),
                               color: const Color(0xFFFFFFFF),
                               borderRadius: BorderRadius.circular(12),
                             ),
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 SvgPicture.asset(
                                     "assets/icons/Vector (2).svg"),
                                 const SizedBox(
                                   width: 15,
                                 ),
                                 Text(
                                   'About Us',
                                   style: AppTextStyles.mediumStyle.copyWith(
                                       color: const Color(0xFF212121),
                                       fontSize: 16),
                                 ),
                                 const Spacer(),
                                 const Icon(
                                   Icons.arrow_forward_ios,
                                   color: Color(0xffD3DAEA),
                                   size: 20,
                                 ),
                               ],
                             ),
                           ),

                           const SizedBox(height: 10,),
                           Container(
                             width: double.infinity,
                             height: 53,
                             padding: const EdgeInsets.symmetric(
                                 horizontal: 10, vertical: 10),
                             decoration: BoxDecoration(
                               border: Border.all(color: const Color(0xffD3DAEA)),
                               color: const Color(0xFFFFFFFF),
                               borderRadius: BorderRadius.circular(12),
                             ),
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 SvgPicture.asset(
                                     "assets/icons/Iconly Bold Login.svg"),
                                 const SizedBox(
                                   width: 15,
                                 ),
                                 Text(
                                   'Log Out',
                                   style: AppTextStyles.mediumStyle.copyWith(
                                       color: const Color(0xFFEA565A),
                                       fontSize: 16),
                                 ),
                             const Spacer()
                               ],
                             ),
                           ),

                         ],
                       ),
                     ),
                   ),
                  ],
                ),

                Padding(
                  padding:  EdgeInsets.only(top: 80,left:MediaQuery.of(context).size.width*0.40,right: 0),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundColor: const Color(0xffFFF1B8),
                      child
                          : Stack(
                            children: [
                              const Image(image: AssetImage('assets/images/home_screen/17.png')),
                              Positioned(
                                bottom: 0,right: 0,
                                child: SvgPicture.asset('assets/icons/Group 75967.svg'),
                              )
                            ],
                          )),
                ),
              ],
            ),
          ),
        ));
  }
}
