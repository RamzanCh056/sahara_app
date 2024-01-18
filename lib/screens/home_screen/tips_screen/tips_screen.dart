import 'package:flutter/material.dart';
import 'package:sahara_app/screens/home_screen/tips_screen/tips_tab/travel_acess.dart';
import 'package:sahara_app/themes/app_colors.dart';
import 'package:svg_flutter/svg.dart';

import '../../../themes/app_textStyle.dart';


class TipsScreen extends StatefulWidget {
 TipsScreen({super.key});

  @override
  State<TipsScreen> createState() => _TipsScreenState();
}

class _TipsScreenState extends State<TipsScreen> {
  final List tabName=[
    'Travel and Access',
    'Ihram',
    'Sanctuary'
  ];
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body:

    Stack(
      clipBehavior: Clip.none,
      children: [
       const Image(
            width: double.infinity,
            height: 150,
            fit: BoxFit.cover,
            image:
            AssetImage("assets/images/home_screen/background.png")),
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
                  'Tips',
                  style: AppTextStyles.boldStyle.copyWith(
                      color: const Color(0xffFFFFFF), fontSize: 16),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 110),
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.90,
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(tabName.length, (index) => GestureDetector(
            onTap:(){
              setState(() {
                _currentIndex=index;
              });
            },

            child: Container(

              height: 31,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
              margin: const EdgeInsets.only(right: 10),
              decoration: ShapeDecoration(
                color:_currentIndex==index? AppColors.greenColor:AppColors.primaryWhite,
                shape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: Color(0xFF485470)),
        borderRadius: BorderRadius.circular(17),
                ),
              ),
              child: Center(
                child: Text(
          tabName[index].toString()
          ,style:AppTextStyles.semiBoldStyle.copyWith(color:_currentIndex==index?  AppColors.primaryWhite:AppColors.borderColor,fontSize: 14)
                ),
              ),
            ),
          )
          ),
          ),
        ),


        const SizedBox(height: 15,),
              _currentIndex==0?TravelAndAccessTab():Container()
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
