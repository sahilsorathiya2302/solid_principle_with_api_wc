import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solid_principle_demo_wc/core/theme/app_border_radius.dart';
import 'package:solid_principle_demo_wc/core/theme/app_colors.dart';
import 'package:solid_principle_demo_wc/core/theme/app_padding_size.dart';

class CustomTextFormField extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final String hintText;
  const CustomTextFormField(
      {super.key, this.validator, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        errorBorder: buildOutlineInputBorder(borderColors: AppColors.red),
      ),
    ).paddingSymmetric(horizontal: AppPaddingSize.pw10, vertical: AppPaddingSize.ph10);
  }

  OutlineInputBorder buildOutlineInputBorder({Color? borderColors}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: borderColors ?? AppColors.gray),
      borderRadius: BorderRadius.circular(AppBorderRadius.r10),
    );
  }
}
