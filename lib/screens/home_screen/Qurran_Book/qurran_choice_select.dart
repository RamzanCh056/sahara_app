import 'package:flutter/material.dart';
import 'package:sahara_app/screens/home_screen/Qurran_Book/Tabs/by_surah.dart';
import 'package:sahara_app/themes/app_colors.dart';
import 'package:svg_flutter/svg.dart';
import '../../../themes/app_textStyle.dart';


class QurranChoiceSelect extends StatefulWidget {
  QurranChoiceSelect({super.key});

  @override
  State<QurranChoiceSelect> createState() => _QurranChoiceSelectState();
}

class _QurranChoiceSelectState extends State<QurranChoiceSelect> {

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
                  'Quran Book',
                  style: AppTextStyles.boldStyle.copyWith(
                      color: const Color(0xffFFFFFF), fontSize: 16),
                ),
                const Spacer(),
                Container(
                  width: 40,
                  height: 40,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      color:const Color(0xff2B4E42),
                        'assets/images/home_screen/Iconly Light Search.svg'),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 110),
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.90,
            padding: const EdgeInsets.symmetric( vertical: 10),
            decoration: const BoxDecoration(
                color: AppColors.primaryWhite,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    GestureDetector(

                      onTap:(){
                        setState(() {
                          _currentIndex=0;
                        });

          },
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width*0.33,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'By Surah',
                              style: AppTextStyles.mediumStyle.copyWith(
                                  color: _currentIndex==0? const Color(0xff212121):const Color(0xff7D8CAC), fontSize: 14),
                            ),
                            const SizedBox(height: 10,),
                            Divider(
                              thickness: 2,color: _currentIndex==0?const Color(0xff212121):const Color(0xffffff),height: 2,
                            ),

                          ],
                        ),
                      ),
                    ),
                    GestureDetector(

                      onTap:(){
                        setState(() {
                          _currentIndex=1;
                        });

                      },
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width*0.33,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'By Parah',
                              style: AppTextStyles.mediumStyle.copyWith(
                                  color: _currentIndex==1? const Color(0xff212121):const Color(0xff7D8CAC), fontSize: 14),
                            ),
                            const SizedBox(height: 10,),
                            Divider(
                              thickness: 2,color: _currentIndex==1?const Color(0xff212121):const Color(0xffffff),height: 2,
                            ),

                          ],
                        ),
                      ),
                    ),
                    GestureDetector(

                      onTap:(){
                        setState(() {
                          _currentIndex=2;
                        });

                      },
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width*0.33,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Favourites',
                              style: AppTextStyles.mediumStyle.copyWith(
                                  color: _currentIndex==2? const Color(0xff212121):const Color(0xff7D8CAC), fontSize: 14),
                            ),
                            const SizedBox(height: 10,),
                            Divider(
                              thickness: 2,color: _currentIndex==2?const Color(0xff212121):const Color(0xffffff),height: 2,
                            ),

                          ],
                        ),
                      ),
                    ),

                  ],
                ),

_currentIndex==0?const Expanded(child: BySurahTab()):Container()

                ],
            ),
          ),
        ),
      ],
    ),

    )
    );
  }
}
