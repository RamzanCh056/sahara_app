
import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;
import 'package:just_audio/just_audio.dart';

import '../../audio_player.dart';

class Quran extends StatefulWidget {
   Quran({ required this .surahNumber,Key? key}) : super(key: key);
  int surahNumber;

  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {


  @override
  void initState() {
    super.initState();


  }

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(quran.getSurahNameArabic(widget.surahNumber)),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: ListView.builder(
            itemCount: quran.getVerseCount(1),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  quran.getVerse(widget.surahNumber, index + 1, verseEndSymbol: true),
                  textAlign: TextAlign.right,
                ),
                subtitle: Text(quran.getVerseTranslation(widget.surahNumber, index + 1)),

                trailing:  widget.surahNumber==2? Text(""):AudioPlay(
                  pathh: (quran.getAudioURLByVerseNumber(index+1)),

                )
              );
            },
          ),
        ),

      ),
    );
  }
}

