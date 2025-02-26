import 'package:get/get.dart';
import 'package:solid_principle_demo_wc/core/routes/app_routes_name.dart';
import 'package:solid_principle_demo_wc/features/auth/otp/presentation/otp_screen.dart';
import 'package:solid_principle_demo_wc/features/auth/sign_in/presentation/sign_in_screen.dart';
import 'package:solid_principle_demo_wc/features/home/presentation/home_screen.dart';

class AppRoutesPages {
  AppRoutesPages._();

  static List<GetPage> pages = [
    GetPage(
      name: AppRoutesName.signInScreen,
      page: () => const SignInScreen(),
    ),
    GetPage(
      name: AppRoutesName.otpScreen,
      page: () => const OtpScreen(),
    ),
    GetPage(
      name: AppRoutesName.homeScreen,
      page: () => const HomeScreen(),
    ),
  ];
}
