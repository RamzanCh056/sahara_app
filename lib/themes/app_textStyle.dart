import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static  TextStyle boldStyle = GoogleFonts.manrope(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: AppColors.boldTextColor
  );
  static  TextStyle semiBoldStyle = GoogleFonts.manrope(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: AppColors.titleColor
  );
  static  TextStyle mediumStyle = GoogleFonts.manrope(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryBlack
  );
  static  TextStyle regularStyle = GoogleFonts.manrope(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.borderColor
  );
}