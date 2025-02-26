import 'package:flutter/material.dart';
import 'package:solid_principle_demo_wc/core/theme/app_colors.dart';
import 'package:solid_principle_demo_wc/core/theme/app_text_size.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? colors;
  const CustomText({super.key, required this.text, this.fontSize, this.fontWeight, this.colors});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: colors ?? AppColors.black,
          fontSize: fontSize ?? AppTextSize.s14,
          fontWeight: fontWeight ?? FontWeight.w500),
    );
  }
}
