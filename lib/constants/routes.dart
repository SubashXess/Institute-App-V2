import 'package:flutter/material.dart';
import 'package:institute_app_v2/screens/login_page.dart';
import 'package:institute_app_v2/screens/otp_page.dart';

final Map<String, WidgetBuilder> routes = {
  '/loginpage': (context) => const LoginPage(),
  '/otppage': (context) => const OTPPage(),
};
