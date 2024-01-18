import 'package:flutter/material.dart';
import 'package:sahara_app/screens/home_screen/tips_screen/tips_tab/baggage_screen/baggage_screen.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../themes/app_colors.dart';
import '../../../../themes/app_textStyle.dart';

class TravelAndAccessTab extends StatefulWidget {
 TravelAndAccessTab({super.key});

  @override
  State<TravelAndAccessTab> createState() => _TravelAndAccessTabState();
}

class _TravelAndAccessTabState extends State<TravelAndAccessTab> {
  final List suggestList=[
    'Baggage at the Airport',
    'Private Cars',
    'Travelling for Umrah by Land',
    'Haramain Express',
    'Banned Items by Saudi Customs',
    'What can I carry in my bag',
    'Women\'s Prayer Halls',
  ];

  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
            height: 52,
            width: MediaQuery.of(context).size.width * 0.93,
            child: TextField(
              decoration: InputDecoration(
                  fillColor:AppColors.limeColor.withOpacity(0.20),
                  filled: true,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(
                        color:const Color(0xFF7D8CAC),
                        'assets/images/home_screen/Iconly Light Search.svg'),
                  ),
                  hintText: 'Search topics or questions',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xff99A7C7)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:  BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:  BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  )),
            )),
        const SizedBox(height: 10,),
        Text(
         'Top Suggestions'
            ,style:AppTextStyles.boldStyle.copyWith(color:const Color(0xFF363D4C),fontSize: 14)
        ),
        const SizedBox(height: 10,),
     ...List.generate(suggestList.length,   (index) =>    GestureDetector(

       onTap: (){
         setState(() {
           _currentIndex=index;
           if(_currentIndex==0){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> const BaggageScreen()));
           }
         });
       },
       child: Container(
         width: double.infinity,
         height: 56,
         padding: const EdgeInsets.symmetric(horizontal: 10),
         margin: const EdgeInsets.only(bottom: 10),
         decoration: ShapeDecoration(
           color: Colors.white,
           shape: RoundedRectangleBorder(
             side: const BorderSide(width: 1, color: Color(0xFFC8D1E5)),
             borderRadius: BorderRadius.circular(12),
           ),
         ),
         child: Row(
           crossAxisAlignment: CrossAxisAlignment.center,children: [
           Text(
             suggestList[index].toString()
               ,style:AppTextStyles.semiBoldStyle.copyWith(color:const Color(0xFF363D4C),fontSize: 16)
           ),
           const Spacer(),
           const Icon(Icons.arrow_forward_ios,color: AppColors.hintTextColor,)

         ],
         ),
       ),
     ),)

    ],);
  }
}
