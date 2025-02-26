import 'package:flutter/material.dart';
import 'package:solid_principle_demo_wc/core/components/custom_button.dart';
import 'package:solid_principle_demo_wc/core/components/custom_text_form_field.dart';
import 'package:solid_principle_demo_wc/core/constraints/app_string.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController userIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(controller: mobileController, hintText: AppString.enterMobile),
        CustomTextFormField(controller: mobileController, hintText: AppString.enterUserId),
        CustomButton(
          onPressed: () {},
        )
      ],
    );
  }
}
