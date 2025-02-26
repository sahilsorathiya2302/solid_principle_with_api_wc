import 'package:flutter/material.dart';
import 'package:solid_principle_demo_wc/core/components/custom_title.dart';
import 'package:solid_principle_demo_wc/core/constraints/app_string.dart';
import 'package:solid_principle_demo_wc/features/auth/sign_in/presentation/widget/input_widget.dart';

import '../../../../core/components/custom_text_form_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Center(
              child: CustomTitle(text: AppString.signIn),
            ),
            InputWidget(),
          ],
        ),
      ),
    );
  }
}
