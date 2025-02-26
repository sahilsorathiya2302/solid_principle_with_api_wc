import 'package:flutter/material.dart';
import 'package:solid_principle_demo_wc/core/components/custom_title.dart';
import 'package:solid_principle_demo_wc/core/constraints/app_string.dart';
import 'package:solid_principle_demo_wc/features/auth/otp/presentation/widget/pin_put_widget.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTitle(
            text: AppString.otpTitle,
          ),
          SizedBox(
            height: 10,
          ),
          PinPutWidget()
        ],
      ),
    );
  }
}
