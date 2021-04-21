import 'package:classbe/screens/splash/first_intro.dart';
import 'package:classbe/styles/styles.dart';
import 'package:classbe/utils/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return Scaffold(
              body: SafeArea(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 75,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'WELCOME',
                            style: WelcomeSubtitle,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'ClassBe',
                                style: BigBoldWelcomeHeading,
                              ),
                              Text(
                                'Online Classes',
                                style: SmallBoldBlackWelcomeText,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FirstIntro()));
                        },
                        child: Container(
                          height: 75,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 33.0),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'Start Learning',
                                style: SmallBlackText,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
