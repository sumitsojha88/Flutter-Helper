
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_helper/boarding_screens/styles.dart';
import 'package:lottie/lottie.dart';



class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
    margin: EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
    //  margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 12.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Color(0xFFFFFFFF),
                Color(0xFFFFFFFF),
                Color(0xFFFFFFFF),
                Color(0xFFFFFFFF),
               // Color(0xFFE1BEE7),
              //  Color(0xFFCE93D8),
              //  Color(0xFFBA68C8),
              //  Color(0xFFBA68C8),

              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Container(
                  height: 600.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 300,
                              width: 300,
                              child: Lottie.asset('assets/lottie_animation/online_meeting.json'),
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'Connect people around the world',
                              style: TextStyle(
                                fontSize: 36.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'Use CALL-E.where we are now able to communicate with each other across countries,\ncontinents — and even languages',
                              style: kSubtitleStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 300,
                              width: 300,
                              child: Lottie.asset('assets/lottie_animation/lottie_student.json'),
                            ),
                            SizedBox(height: 30.0),
                            Text(
                              'Immersive Video Learning \nExperience',
                              style: TextStyle(
                                  fontSize: 36.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'Video Doubts and Augmented Reality make learning more fun!',
                              style: kSubtitleStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 300,
                              width: 300,
                              child: Lottie.asset('assets/lottie_animation/lottie_books.json'),
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'Insights from the World \nBest Learning Content',
                              style: TextStyle(
                                  fontSize: 36.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              ' Top Books,Courses,Podcats,Articles',
                              style: kSubtitleStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 300,
                              width: 300,
                              child: Lottie.asset('assets/lottie_animation/lottie_service.json'),
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'Growth Challenges For You',
                              style: TextStyle(
                                  fontSize: 36.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'Take up Challenges on Wizdom to fuel \nYour personal and professional growth!',
                              style: kSubtitleStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage != _numPages - 1
          ? Container(
      //  mainAxisAlignment: MainAxisAlignment.center,
        height: 40.0,
        width: MediaQuery.of(context).size.width,
       // color:  Color(0xFFBA68C8),
       color: Color(0xFFFFFFFF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 0.0),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.black,
                child: Text("SKIP"),
                onPressed: () {},
                splashColor: Colors.orange,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 100.0, right: 20.0),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.black,
                child: Text("NEXT"),
                onPressed: () {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                },
                splashColor: Colors.orange,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            ),
          ],
        ),
      )
          :
      Container(
        height: 60.0,
        width: MediaQuery.of(context).size.width,
     //   color:  Color(0xFFBA68C8),
       color:  Color(0xFFFFFFFF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 130.0, right: 50.0),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.black,
                child: Text("HOLA AMIGOS"),
                onPressed: () {
                },
                splashColor: Colors.orange,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}