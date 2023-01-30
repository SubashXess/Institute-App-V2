import 'package:flutter/material.dart';
import 'package:institute_app_v2/screens/tutor_profile_page/tutor_profile_page.dart';
import 'package:institute_app_v2/screens/tutor_profile_page_v2/tutor_profile_page_v2.dart';
import 'package:institute_app_v2/screens/viewer_screen/dashboard_page/viewer_dashboard_page.dart';
import 'package:institute_app_v2/screens/login_page.dart';
import 'package:institute_app_v2/screens/otp_page.dart';
import 'package:institute_app_v2/screens/viewer_screen/viewer_registration_page/viewer_registration_page.dart';
import 'package:institute_app_v2/screens/viewer_screen/viewer_visit_tutor_ptofile_page/viewer_visit_tutor_profile_page.dart';

import '../screens/viewer_screen/viewer_profile_page/viewer_profilepage.dart';

final Map<String, WidgetBuilder> routes = {
  '/loginpage': (context) => const LoginPage(),
  '/otppage': (context) => const OTPPage(),
  // '/tutor_profile_page': (context) => const TutorProfilePage(),
  '/tutor_profile_page_v2': (context) => const TutorProfilePageV2(),

  ////////////////////////// Viewer Page ////////////////////////////
  '/viewer_registration_page': (context) => const ViewerRegistrationPage(),
  '/viewer_profile_page': (context) => const ViewerProfilePage(),
  '/dashboard_page': (context) => const DashboardPage(),
  '/viewer_visit_tutor_page': (context) => const ViewerVisitTutorProfilePage(),
};
