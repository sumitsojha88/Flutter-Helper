import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jainamgym/login_screen.dart';

class Splashscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<Splashscreen>{

  @override
  void initState(){
    super.initState();
    startTimer();
  }

  startTimer() async{
    var duration = Duration(seconds: 40);
    return new Timer(duration, loginRoute);
  }

  loginRoute(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return initWidget();
  }

  initWidget(){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: new Color(0xffF5591F),
              gradient: LinearGradient(
                colors: [(new Color(0xFF000000)), (new Color(0xFF303030))],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            ),
          ),
          Container(
            height: 1000,
            width:  1000,
            margin: EdgeInsets.only(left:15,top: 60),
            alignment: Alignment.bottomRight,
             padding: EdgeInsets.all(15),
              child: Image.asset("images/splash_first.png",
                  height: 800,
                //  width: 1300,
                  fit:BoxFit.cover
              ),
           /*   decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/splash_first.png",),
                   alignment: Alignment(-1, -0.5),
                 ),
             ), */
          ),
       /*   Center(
            child: Container(

              child: Image.asset("images/splash_first.png"),
            )
          ) */
        ],
      ),
    );
  }
}
