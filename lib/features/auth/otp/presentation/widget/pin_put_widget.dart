import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:solid_principle_demo_wc/core/components/custom_button.dart';
import 'package:solid_principle_demo_wc/core/theme/app_padding_size.dart';

class PinPutWidget extends StatefulWidget {
  const PinPutWidget({super.key});

  @override
  State<PinPutWidget> createState() => _PinPutWidgetState();
}

class _PinPutWidgetState extends State<PinPutWidget> {
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Column(
      children: [
        Center(
          child: Pinput(
            controller: otpController,
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: focusedPinTheme,
            submittedPinTheme: submittedPinTheme,
            validator: (s) {
              if (s == null || s.isEmpty) {
                return "Enter Otp Digits";
              }

              return null;
            },
            pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
            showCursor: true,
            onCompleted: (pin) => print(pin),
          ),
        ).paddingSymmetric(vertical: AppPaddingSize.ph20),
        CustomButton(
          onPressed: () {},
        )
      ],
    );
  }
}
