import 'package:flutter/material.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page de connexion (Sign Up)",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 28
              ),
              textAlign: TextAlign.center,
            ),
          ]
        )
      ),
    );
  }
}
