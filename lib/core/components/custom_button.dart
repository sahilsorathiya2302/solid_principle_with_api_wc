import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solid_principle_demo_wc/core/components/custom_text.dart';
import 'package:solid_principle_demo_wc/core/constraints/app_string.dart';
import 'package:solid_principle_demo_wc/core/theme/app_border_radius.dart';
import 'package:solid_principle_demo_wc/core/theme/app_colors.dart';
import 'package:solid_principle_demo_wc/core/theme/app_text_size.dart';

class CustomButton extends StatelessWidget {
  final void Function() onPressed;
  const CustomButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.gray,
          fixedSize: Size(240.w, 50.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppBorderRadius.r15),
            side: const BorderSide(color: AppColors.black),
          ),
        ),
        onPressed: onPressed,
        child: const CustomText(
          colors: AppColors.white,
          fontSize: AppTextSize.s16,
          text: AppString.submit,
        ));
  }
}
