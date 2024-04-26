// import 'package:flutter/material.dart';
//
//
// class QuranProvider extends ChangeNotifier {
//   late int currentPage;
//   final SharedPreferences prefs;
//
//
//
//
//   QuranProvider(this.prefs,) {
//     currentPage = prefs.getInt('page') ?? 1;
//   }
//
//
//   final carouselController = CarouselController();
//
//   int get surahNumber => quranPages[currentPage - 1].surah;
//
//   String get surahName => getSurahNameArabic(surahNumber);
//
//   int get juz => quranPages[currentPage - 1].juz;
//
//   int get hizb => quranPages[currentPage - 1].hizb;
//
//   int get hizbQuarter => quranPages[currentPage - 1].hizbQuarter;
//
//   bool get isRightPage => currentPage % 2 != 0;
//
//   // String get hizbText => gethizbText(currentPage);
//
//   String get surahData => getSurahDataWithName(surahNumber);
//
//   // void goToPage(int pageIndex) {
//   //
//   //    //carouselController.jumpToPage(pageIndex);
//   //    carouselController.animateToPage(
//   //
//   //     pageIndex,
//   //     duration: Duration(milliseconds: 200), // Adjust the duration as needed
//   //     curve: Curves.ease, // Choose the curve that fits your transition style
//   //  );
//   // }
//   void goToPage(int pageIndex) {
//     carouselController.animateToPage(
//       pageIndex,
//       duration: Duration(milliseconds: 200),
//       curve: Curves.ease,
//     );
//
//     currentPage = pageIndex + 1; // Update the currentPage
//     prefs.setInt('page', currentPage); // Update the SharedPreferences
//
//     notifyListeners(); // Notify listeners after the state change
//   }
//   void changePage(int newIndex) {
//     currentPage = newIndex + 1;
//     notifyListeners();
//     prefs.setInt('page', newIndex + 1);
//   }
// }