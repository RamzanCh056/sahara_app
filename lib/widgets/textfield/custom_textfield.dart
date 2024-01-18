import 'package:flutter/material.dart';
import 'package:sahara_app/themes/app_colors.dart';


class CustomTextField extends StatelessWidget {
  final Function(String v) ?onChanged;
  final Widget? requiresPrefixIcon;
  final Widget? requiresSuffixIcon;
  final  String ? requiresHintText;
  final TextEditingController? requiresController;

  const CustomTextField({Key? key, this.requiresPrefixIcon, this.requiresHintText, this.requiresController,  this.onChanged, this.requiresSuffixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

      TextField(
      controller: requiresController,
      onChanged: onChanged,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          prefixIcon:Padding(
            padding: const EdgeInsets.all(10),child: requiresPrefixIcon,
          ),
          hintText: requiresHintText,
          suffixIcon: Padding(
            padding: const EdgeInsets.all(10),child: requiresSuffixIcon,
          ),
          hintStyle:const  TextStyle(
              fontWeight:FontWeight.w400 ,fontSize: 16,color: AppColors.hintTextColor
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
                color: Color(0xffC8D1E5)
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
                color: AppColors.mainColor
            ),
          ),
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
                color: Color(0xffC8D1E5)
            ),
          )
      ),
    );
  }
}