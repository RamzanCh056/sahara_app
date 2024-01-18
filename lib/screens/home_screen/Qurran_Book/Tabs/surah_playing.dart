import 'package:flutter/material.dart';
import 'package:sahara_app/themes/app_colors.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../themes/app_textStyle.dart';


class SurahPlaying extends StatefulWidget {
  SurahPlaying({super.key});

  @override
  State<SurahPlaying> createState() => _SurahPlayingState();
}

class _SurahPlayingState extends State<SurahPlaying> {

bool _isVoice=true;
bool _isPic=false;

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
                  'Now Playing',
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
          child:

          _isVoice?
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.90,
            padding: const EdgeInsets.symmetric( horizontal: 15),
            decoration: const BoxDecoration(
                color: AppColors.primaryWhite,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

const Image(

    image: AssetImage("assets/images/qurran/Rectangle 11.png")),
                const SizedBox(height: 10,),
                SvgPicture.asset('assets/images/qurran/Iconly Bold Heart.svg'),
                const SizedBox(height: 10,),
                Text(
                  'Surat-ul-Fateha',
                  style: AppTextStyles.boldStyle.copyWith(
                      color: const Color(0xFF120555),
                      fontSize: 20),
                ),
                Text(
                  'Verses: 7',
                  style: AppTextStyles.regularStyle.copyWith(
                      color: const Color(0xFF7D8CAC),
                      fontSize: 14),
                ),
                const SizedBox(height: 15,),
                Image(
width: MediaQuery.sizeOf(context).width*0.80,
                    image: const AssetImage("assets/images/qurran/Group 88.png")),
                const SizedBox(height: 15,),
                Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                  SvgPicture.asset('assets/images/qurran/Volume Up.svg'),
                  const Icon(Icons.skip_previous,color: Colors.black,),
                  const Icon(Icons.play_circle_filled_outlined,color: Color(0xff2B4E42),size: 55,),
                  const Icon(Icons.skip_next,color: Colors.black,),
                  SvgPicture.asset('assets/images/qurran/Download-2.svg'),
                ],),
                const SizedBox(height:30,),


                Row(
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Read Lyrics',
                        style: AppTextStyles.boldStyle.copyWith(
                            color: const Color(0xFF120555),
                            fontSize: 18),
                      ),
                      const Spacer(),

                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _isPic=true;
                            _isVoice=!_isVoice;
                          });
                        },
                        child: const CircleAvatar(
                          radius: 18,
                          backgroundColor: Color(0xffDDF7E9),child: Icon(Icons.arrow_upward_outlined,color: AppColors.greenColor,),
                        ),
                      )

                    ],
                )

                ],
            ),  
          ):

          _isPic?
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.90,
            decoration: const BoxDecoration(
                color: AppColors.primaryWhite,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Read Lyrics',
                        style: AppTextStyles.boldStyle.copyWith(
                            color: const Color(0xFF120555),
                            fontSize: 18),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _isVoice=true;
                            _isPic=!_isPic;
                          });
                        },
                        child: const CircleAvatar(
                          radius: 18,
                          backgroundColor: Color(0xffDDF7E9),child: Icon(Icons.arrow_downward,color: AppColors.greenColor,),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Image(image: AssetImage('assets/images/qurran/image 101.png')),
                ),
                const Spacer(),

                Container(
height: 66,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: const BoxDecoration(
                    color: Color(0xff2B4E42),

                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("assets/images/qurran/Rectangle 24018.png"),
                      ),

                    const SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Surat-ul-Fateha',
                          style: AppTextStyles.boldStyle.copyWith(
                              color:AppColors.primaryWhite,
                              fontSize: 15),
                        ),
                        Text(
                          'Verses: 7',
                          style: AppTextStyles.regularStyle.copyWith(
                              color:AppColors.primaryWhite,
                              fontSize: 14),
                        ),
                      ],
                    ),
                   SizedBox(width: MediaQuery.sizeOf(context).width*0.15,),
                    const Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                    Icon(Icons.skip_previous,color: Colors.white,size: 30,),
                      Icon(Icons.play_arrow,color: Color(0xffFFFFFF),size: 30),
                      Icon(Icons.skip_next,color: Colors.white,size: 30),
                    ],),



                  ],
                  ),
                )


              ],
            ),
          )
              :
          Container(),
        ),
      ],
    ),

    )
    );
  }
}
