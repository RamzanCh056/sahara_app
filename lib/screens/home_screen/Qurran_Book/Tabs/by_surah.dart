import 'package:flutter/material.dart';
import 'package:sahara_app/screens/home_screen/Qurran_Book/Tabs/surah_playing.dart';

import '../../../../themes/app_colors.dart';
import '../../../../themes/app_textStyle.dart';

class BySurahTab extends StatefulWidget {
  const BySurahTab({super.key});


  @override
  State<BySurahTab> createState() => _BySurahTabState();
}

class _BySurahTabState extends State<BySurahTab> {

  final List surahList=[
    'Surat-ul-Fateha',
    'Surat-ul-Baqara',
    'Surat Al-e-Imran',
    'Surat-un-Nissa',
    'Surat-ul-Maeeda',
    'Surat-ul-Anaam',
    'Surat-ul-Aeyraaf',
    'Surat-ul-Anfaal',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:
          CrossAxisAlignment.start,children: [

          ...List.generate(surahList.length, (index) => GestureDetector(

            onTap: (){
              setState(() {
              if(index==0){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SurahPlaying()));
              }
              });
            },
            child: Container(
              width: double.infinity,
              height: 73,
              margin: EdgeInsets.only(bottom: 10),
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
                  CircleAvatar(
                    radius:15,
                    backgroundColor: Color(0xffDDF7E9),
                    child:  Center(
                      child: Text(
                        '${index+1}',
                        style: AppTextStyles.boldStyle.copyWith(
                            color: AppColors.greenColor,
                            fontSize: 15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        surahList[index].toString(),
                        style: AppTextStyles.boldStyle.copyWith(
                            color: const Color(0xFF27324A),
                            fontSize: 15),
                      ),
                      Text(
                        'Verses: 7',
                        style: AppTextStyles.regularStyle.copyWith(
                            color: const Color(0xFF7D8CAC),
                            fontSize: 14),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.favorite_border_outlined,
                    color: Color(0xffB1BACD),

                  )
                ],
              ),
            ),
          ))
        ],
        ),
      ),
    );
  }
}
