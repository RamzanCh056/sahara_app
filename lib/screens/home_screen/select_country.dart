import 'package:flutter/material.dart';
import 'package:sahara_app/themes/app_colors.dart';
import 'package:svg_flutter/svg.dart';

import '../../themes/app_textStyle.dart';

class SelectCountry extends StatefulWidget {
  const SelectCountry({super.key});

  @override
  State<SelectCountry> createState() => _SelectCountryState();
}

class _SelectCountryState extends State<SelectCountry> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body:

    Stack(
      clipBehavior: Clip.none,
      children: [
        const Image(
            width: double.infinity,
            fit: BoxFit.cover,
            image:
            AssetImage("assets/images/home_screen/Group 1000005865.png")),
        Positioned(
          top: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
           GestureDetector(
               onTap: (){
                 Navigator.pop(context);
               },
               child
               : const Icon(Icons.arrow_back,color: AppColors.primaryWhite,)),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 85),
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
           height: MediaQuery.of(context).size.height * 0.75,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: const BoxDecoration(
                color: AppColors.primaryWhite,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  const SizedBox(height: 15,),
                  Text(
                    'Choose Your Language',
                    style: AppTextStyles.semiBoldStyle.copyWith(
                        color: const Color(0xff120D26), fontSize: 16),
                  ),
                  const SizedBox(height: 15,),
                  SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.93,
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: const Color(0xffffffff),
                            filled: true,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                color:const Color(0xffC8D1E5),
                                  'assets/images/home_screen/Iconly Light Search.svg'),
                            ),
                            hintText: 'Search',
                            hintStyle: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color(0xff99A7C7)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: const BorderSide(
                                  color: Color(0xffC8D1E5)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: const BorderSide(
                                  color: Color(0xffC8D1E5)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: const BorderSide(
                                  color: Color(0xffC8D1E5)),
                            )),
                      ))
                ],
              ),
            ),
          ),
        ),
      ],
    ),

    )
    );
  }
}
