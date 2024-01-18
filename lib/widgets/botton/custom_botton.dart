import 'package:flutter/material.dart';
import 'package:sahara_app/themes/app_colors.dart';
import 'package:sahara_app/themes/app_textStyle.dart';


class CustomButton extends StatelessWidget {


  final Color ? buttonColor;
  final String buttonText;
  const CustomButton({super.key, this.buttonColor, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: buttonColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Text(buttonText,style: AppTextStyles.semiBoldStyle.copyWith(fontSize: 16,color: AppColors.primaryWhite),),
        const Spacer(),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primaryBlack.withOpacity(0.20)
            ),
          child: const Center(
            child: Icon(Icons.arrow_forward,color: AppColors.primaryWhite,size: 15,),
          ),
          )
        ],
      ),

    );
  }
}
