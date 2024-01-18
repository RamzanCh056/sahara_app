import 'package:flutter/material.dart';
import 'package:sahara_app/themes/app_colors.dart';
import 'package:sahara_app/themes/app_textStyle.dart';


class BaggageScreen extends StatefulWidget {
  const BaggageScreen({super.key});

  @override
  State<BaggageScreen> createState() => _BaggageScreenState();
}

class _BaggageScreenState extends State<BaggageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,elevation: 0,centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back,color: AppColors.primaryBlack,)),title:
        Text(
          'Travel and Access',style: AppTextStyles.boldStyle.copyWith(color: AppColors.primaryBlack,fontSize: 16,),
        ),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,physics: const ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,children: [
              const Image(image: AssetImage("assets/images/home_screen/Rectangle 24024.png")),
        const SizedBox(height: 15,),
            Text(
                'Baggage at the Airport'
                ,style:AppTextStyles.boldStyle.copyWith(color:const Color(0xFF363D4C),fontSize: 14)
            ),

        const SizedBox(height: 15,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
              Container(
                height: 5,width: 5,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,color: AppColors.borderColor,
                ),
              ),
              const SizedBox(width: 10,),
              Text(
                  'You can get a trolley to carry your luggage'
                  ,style:AppTextStyles.mediumStyle.copyWith(color:AppColors.borderColor,fontSize: 15)
              )
            ],
            ),
            const SizedBox(height: 5,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
              Container(
                height: 5,width: 5,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,color: AppColors.borderColor,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Text(
                    'There are trolley attendants to load and unload your luggage for a specified fee'
                    ,style:AppTextStyles.mediumStyle.copyWith(color:AppColors.borderColor,fontSize: 15)
                ),
              )
            ],
            ),

            const SizedBox(height: 5,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
              Container(
                height: 5,width: 5,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,color: AppColors.borderColor,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Text(
                    'The Hajj missions arrange pilgrims\' exit from the airport in coordination with the concerned airport authorities, determine the bus stop where they are helped to board and their luggage get transferred'
                    ,style:AppTextStyles.mediumStyle.copyWith(color:AppColors.borderColor,fontSize: 15)
                ),
              )
            ],
            ),

            const SizedBox(height: 10,),
            Text(
                'To go through the airport customs smoothly, using the relevant declaration form disclose the following:',style:AppTextStyles.mediumStyle.copyWith(color:AppColors.borderColor,fontSize: 15)
            ),
            const SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
              Container(
                height: 5,width: 5,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,color: AppColors.borderColor,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Text(
                    'Gifts in commercial quantities i.e. sums exceeding SAR 3,000',style:AppTextStyles.mediumStyle.copyWith(color:AppColors.borderColor,fontSize: 15)
                ),
              )
            ],
            ),
            const SizedBox(height: 5,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,children: [
              Container(
                height: 5,width: 5,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,color: AppColors.borderColor,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Text(
                    'Any amounts exceeding SAR 60,000',style:AppTextStyles.mediumStyle.copyWith(color:AppColors.borderColor,fontSize: 15)
                ),
              )
            ],
            ),
            const SizedBox(height: 10,),
            Text(
                'To guarantee convenient arrival and departure of Hajj and Umrah pilgrims, King Abdulaziz International Airport in Jeddah provides the best services at its various facilities during Hajj and Umrah seasons.',style:AppTextStyles.mediumStyle.copyWith(color:AppColors.borderColor,fontSize: 15)
            ),

          ],
          ),
        ),
      ),
    ));
  }
}
