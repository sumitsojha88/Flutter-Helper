import 'package:flutter/material.dart';
import 'package:flutter_helper/boarding_screens/onboarding_screen.dart';
import 'package:flutter_helper/like_animation_heart/heart_animation.dart';
import 'package:flutter_helper/like_animation_heart/heart_animation_main.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Helper',
      home: OnboardingScreen(),
    );
  }
}