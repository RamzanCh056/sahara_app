import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sahara_app/screens/home_screen/Qurran_Book/qurran_choice_select.dart';
import 'package:sahara_app/screens/home_screen/map_screen/map_screen.dart';
import 'package:sahara_app/screens/home_screen/profile_screen/profile_screen.dart';
import 'package:sahara_app/screens/home_screen/select_country.dart';
import 'package:sahara_app/screens/home_screen/tips_screen/tips_screen.dart';
import 'package:sahara_app/themes/app_colors.dart';
import 'package:svg_flutter/svg.dart';

import '../../themes/app_textStyle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? currentUserEmail;
  final List<String> logosList = [
    'assets/images/home_screen/002-jaima-tent.png',
    'assets/images/home_screen/001-mecca.png',
    'assets/images/home_screen/003-hajj.png',
    'assets/images/home_screen/004-quran.png',
  ];

  final List<String> logosName = [
    'Hajj Guide',
    'Umrah Guide',
    'Ihram Guide',
    'Tips',
  ];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    getCurrentUserEmail();
  }

  void getCurrentUserEmail() {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        currentUserEmail = user.email;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const ScrollPhysics(),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              const Image(
                width: double.infinity,
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/images/home_screen/Group 1000005865.png"),
              ),
              Positioned(
                top: 40,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.93,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const ProfileScreen()));
                              },
                              child: const CircleAvatar(
                                backgroundImage: AssetImage(
                                    "assets/images/home_screen/Group 76751.png"),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome👋',
                                  style: AppTextStyles.regularStyle.copyWith(
                                      color: AppColors.primaryWhite,
                                      fontSize: 14),
                                ),
                                currentUserEmail != null
                                    ? Text(
                                  currentUserEmail!,
                                  style: AppTextStyles.boldStyle.copyWith(
                                      color: AppColors.primaryWhite,
                                      fontSize: 14),
                                )
                                    : Text(
                                  "User",
                                  style: AppTextStyles.boldStyle.copyWith(
                                      color: AppColors.primaryWhite,
                                      fontSize: 14),
                                )
                              ],
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const SelectCountry()));
                              },
                              child: Container(
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
                                      'assets/images/home_screen/Subtract.svg'),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.93,
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: const Color(0xf72ffffff),
                              filled: true,
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(10),
                                child: SvgPicture.asset(
                                    'assets/images/home_screen/Iconly Light Search.svg'),
                              ),
                              hintText: 'Search',
                              hintStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: AppColors.primaryWhite),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: const BorderSide(
                                    color: AppColors.primaryWhite),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: const BorderSide(
                                    color: AppColors.primaryWhite),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: const BorderSide(
                                    color: AppColors.primaryWhite),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 180),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: const BoxDecoration(
                      color: AppColors.primaryWhite,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: logosName.length,
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            childAspectRatio: 1.34),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _currentIndex = index;
                                if (_currentIndex == 0) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          const MapScreen()));
                                }
                                if (_currentIndex == 3) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                           TipsScreen()));
                                }
                              });
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Image(
                                  image: AssetImage(logosList[index]),
                                ),
                                Text(
                                  logosName[index],
                                  style: AppTextStyles.boldStyle.copyWith(
                                      color: const Color(0xff27324A),
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                   QurranChoiceSelect()));
                        },
                        child: Container(
                          width: double.infinity,
                          height: 107,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          decoration: ShapeDecoration(
                            color: const Color(0xFFDDF7E9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Read & Listen Quran',
                                    style: AppTextStyles.boldStyle.copyWith(
                                        color: AppColors.primaryBlack,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    'With wide range of Audio',
                                    style: AppTextStyles.regularStyle.copyWith(
                                        color: AppColors.borderColor,
                                        fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 92,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF2B4E42),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Explore',
                                          style: AppTextStyles.regularStyle
                                              .copyWith(
                                              color: AppColors.primaryWhite,
                                              fontSize: 12),
                                        ),
                                        const Spacer(),
                                        const Icon(
                                          Icons.arrow_forward,
                                          color: AppColors.primaryWhite,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Spacer(),
                              const Image(
                                  image: AssetImage(
                                      "assets/images/home_screen/image 99.png"))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: 107,
                        decoration: BoxDecoration(
                          color: const Color(0xFFDDF7E9),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Watch 360 Video',
                                    style: AppTextStyles.boldStyle.copyWith(
                                        color: AppColors.primaryBlack,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    'Watch 360 Video',
                                    style: AppTextStyles.regularStyle.copyWith(
                                        color: AppColors.borderColor,
                                        fontSize: 12),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 114,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF2B4E42),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Watch Now',
                                          style: AppTextStyles.regularStyle
                                              .copyWith(
                                              color: AppColors.primaryWhite,
                                              fontSize: 12),
                                        ),
                                        const Spacer(),
                                        const Icon(
                                          Icons.arrow_forward,
                                          color: AppColors.primaryWhite,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Spacer(),
                            const Image(
                                height: 107,
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/home_screen/kaba.png"))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: double.infinity,
                        height: 95,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFFF2C4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Refer your Friends',
                                  style: AppTextStyles.boldStyle.copyWith(
                                      color: AppColors.primaryBlack,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Get your friend to join your spark',
                                  style: AppTextStyles.regularStyle.copyWith(
                                      color: AppColors.borderColor,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Image(
                                image: AssetImage(
                                    "assets/images/home_screen/Group 75957.png"))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 73,
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
                            const Image(
                                image: AssetImage(
                                    "assets/images/home_screen/image 21.png")),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Buy Premium',
                                  style: AppTextStyles.boldStyle.copyWith(
                                      color: const Color(0xFF4C9F7D),
                                      fontSize: 16),
                                ),
                                Text(
                                  'Enjoy an Ad free experience',
                                  style: AppTextStyles.regularStyle.copyWith(
                                      color: const Color(0xFF7D8CAC),
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFDDF7E8),
                                shape: OvalBorder(),
                              ),
                              child: const Icon(
                                Icons.arrow_forward,
                                color: AppColors.mainColor,
                                size: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
