import 'package:flutter/material.dart';
import 'package:flutter_helper/like_animation_heart/heart_animation.dart';


class homeheartanimation extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Center(

          child: Heart(),
        ),

    );
  }
}