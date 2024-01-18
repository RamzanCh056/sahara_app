import 'package:casa_vertical_stepper/casa_vertical_stepper.dart';
import 'package:flutter/material.dart';
import 'package:sahara_app/themes/app_textStyle.dart';
import '../../../themes/app_colors.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  bool _isExtend=false;
  int activeStep=0;

  final stepperPlace = [

'Meeqat',
    'Al Masjid Haram',
    'Mina',
    'Plains of Arafat',
    'Muzdalifah',
    'Back to Mina',
    'Al Masjid Haram',
    'Meeqat'


  ];
  final stepperPlaceNumber = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
  ];






  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body:     Stack(
      clipBehavior: Clip.none,
      children: [
        const Image(
            width: double.infinity,
            fit: BoxFit.cover,
            image:
            AssetImage("assets/images/home_screen/Map.png")),
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
          padding: _isExtend?const EdgeInsets.only(top: 85):const EdgeInsets.only(top: 620),
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.90,
            padding: const EdgeInsets.symmetric( vertical: 10),
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
          const SizedBox(height: 10,),

                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _isExtend=!_isExtend;
                      });
                    },
                    child: Center(
                      child: Container(height: 12,width: MediaQuery.sizeOf(context).width*0.30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xf557D8CAC),
                      ),
                    ),
                    ),
                  ),
                  const SizedBox(height: 15,),
            ListView.builder(
              scrollDirection: Axis.vertical,
           physics: const ScrollPhysics(),
              shrinkWrap: true,itemCount: stepperPlaceNumber.length,
              itemBuilder: (BuildContext context, int index) { return     SizedBox(

                width: MediaQuery.sizeOf(context).width*1,
                child: CasaVerticalStepperView(steps: [
                StepperStep(
                  isExpanded: true,
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,

                            children: [
                              Text(stepperPlace[index].toString(),style: AppTextStyles.boldStyle.copyWith(color: AppColors.titleColor,fontSize: 15),),
const SizedBox(width: 10,),
                              index==0?
                          const CircleAvatar(
                            radius: 10,
                            backgroundColor: AppColors.greenColor,child: Icon(
                            Icons.done,size: 10,color: AppColors.primaryWhite,
                          ),
                          )
                              :
                                Text('(1.2km away)',style: AppTextStyles.regularStyle.copyWith(color: AppColors.greenColor,fontSize: 12),),


                           ],
                          ),
                          Text('Alsouq Alsagheer Tunnel, Al Hajla...',style: AppTextStyles.regularStyle.copyWith(color: const Color(0xff7D8CAC),fontSize: 14),),
                        ],
                      ),
const SizedBox(width: 5),
                      const CircleAvatar(
                        radius: 15,
                backgroundColor: AppColors.hintTextColor,child: Icon(
                Icons.arrow_forward_ios,size: 15,color: AppColors.primaryWhite,
                      ),
                      )
                    ],
                  ),
                  leading:

                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:Border.all(color: const Color(0xff7D8CAC))
                    ),
                    child:     Text(stepperPlaceNumber[index].toString(),style: AppTextStyles.boldStyle.copyWith(color:  const Color(0xff7D8CAC),fontSize: 16),),
                  ),


                  view:const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                    ],
                  ),
                ),
                            ],seperatorColor: AppColors.hintTextColor,),
              );
            },
           )


                ],
              ),
            ),
          ),
        ),
      ],
    ),));
  }
}
