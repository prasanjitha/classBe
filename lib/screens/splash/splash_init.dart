import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:classbe/screens/splash/first_intro.dart';
import 'package:classbe/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return AnimatedSplashScreen(
      splash: 'assets/images/logo.png',
      nextScreen: SplashWelcomePage(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      duration: 3000,
      centered: true,
      animationDuration: Duration(milliseconds: 1500),
    );
  }
}

class SplashWelcomePage extends StatefulWidget {
  @override
  _SplashWelcomePageState createState() => _SplashWelcomePageState();
}

class _SplashWelcomePageState extends State<SplashWelcomePage> {
  startTime() {
    Timer(
      Duration(milliseconds: 1500),
      () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => FirstIntro()));
//          SignInWithEmailPage(),
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashScreen());
  }
}
