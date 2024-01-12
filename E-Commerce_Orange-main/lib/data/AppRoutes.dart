import 'package:ecommerceorange/View/Screen/LoginScreen.dart';
import 'package:ecommerceorange/View/Screen/OTP_Screen.dart';
import 'package:ecommerceorange/View/Screen/SIgnUp_Screen.dart';
import 'package:ecommerceorange/View/Screen/SignUp_2_Screen.dart';
import 'package:flutter/material.dart';

import '../View/Screen/ForgetScreen/Forget_Screen.dart';
import '../View/Screen/Home_Screen/Home_Screen.dart';

class AppRoute{
  static const String login ="/LoginScreen";
  static const String signup ="/SignUpScreen";
  static const String forget ="/ForgetPasswordScreen";
  static const String signup2 ="/SignUp2Screen";
  static const String OTP ="/OTPScreen";
  static const String home ="/HomeScreen";
}
Map<String, Widget Function(BuildContext)> route = {
  AppRoute.login: (context) => const LoginScreen(),
  AppRoute.signup: (context) => const SignUpScreen(),
  AppRoute.home: (context) => const HomeScreen(),
  AppRoute.forget: (context) => const ForgetPasswordScreen(),
  AppRoute.signup2: (context) => const SignUp2Screen(),
  AppRoute.OTP: (context) => const OTPScreen(),
};