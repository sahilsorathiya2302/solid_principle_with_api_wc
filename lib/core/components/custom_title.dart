import 'package:flutter/material.dart';
import 'package:solid_principle_demo_wc/core/components/custom_text.dart';
import 'package:solid_principle_demo_wc/core/theme/app_text_size.dart';

class CustomTitle extends StatelessWidget {
  final String text;
  const CustomTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: text,
      fontSize: AppTextSize.s24,
      fontWeight: FontWeight.w700,
    );
  }
}
