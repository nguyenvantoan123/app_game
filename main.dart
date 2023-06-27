import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          backgroundColor: Color(0xff0E1647),
          splash: 'assets/images/1.png',
          splashIconSize: double.infinity,
          nextScreen: Login(),
          splashTransition: SplashTransition.fadeTransition,
        ));
  }
}
