import 'package:flutter/material.dart';
import 'package:agrixtech_application_1/Pages/loadingpage.dart';
import 'package:agrixtech_application_1/Pages/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: const DelayedHomePage(),
      routes: {
        '/OnboardingPage': (context) => const OnboardingPage(),
      },
    );
  }
}



