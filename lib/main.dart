import 'package:flutter/material.dart';
import 'package:institute_app_v2/providers/timer_providers.dart';
import 'package:provider/provider.dart';
import 'constants/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ResendOTPTimerProvider()),
      ],
      child: MaterialApp(
        title: 'Institute App V2',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/tutor_profile_page_v2',
        routes: routes,
      ),
    );
  }
}
