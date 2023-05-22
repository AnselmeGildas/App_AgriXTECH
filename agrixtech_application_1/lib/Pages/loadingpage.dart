import 'package:flutter/material.dart';
import 'dart:async';


class DelayedHomePage extends StatefulWidget {
  const DelayedHomePage({Key? key}) : super(key: key);
  @override
  _DelayedHomePageState createState() => _DelayedHomePageState();
}

class _DelayedHomePageState extends State<DelayedHomePage> {
  @override
  void initState() {
    super.initState();
    // Delay the navigation by 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/OnboardingPage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/Images/Image1.jpg", 
              height: 150,),
              const Padding(padding: EdgeInsets.only(top:100)),

            const CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Color.fromRGBO(64, 212, 0, 1))),
          ],
        ) 
      ),
    );
}
}