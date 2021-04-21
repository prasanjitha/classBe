import 'package:classbe/screens/splash/second_intro.dart';
import 'package:classbe/styles/styles.dart';
import 'package:classbe/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstIntro extends StatefulWidget {
  @override
  _FirstIntroState createState() => _FirstIntroState();
}

class _FirstIntroState extends State<FirstIntro> {
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
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        color: PrimaryBlue,
                        child: Padding(
                          padding: EdgeInsets.only(
                              bottom: 16 * SizeConfig.heightMultiplier),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Online, Live \n Video, interactive \n Classes!',
                              textAlign: TextAlign.center,
                              style: BigBolgWhiteHeading,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(
                              8.33 * SizeConfig.heightMultiplier,
                            ),
                          ),
                        ),
                        height: 56.11 * SizeConfig.heightMultiplier,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 7.44 * SizeConfig.heightMultiplier),
                              child: Text(
                                'WELCOME',
                                style: WelcomeSubtitle,
                              ),
                            ),
                            Text(
                              'To',
                              style: TextStyle(
                                fontFamily: 'VisbyCF',
                                fontSize: 2 * SizeConfig.textMultiplier,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 2.22 * SizeConfig.heightMultiplier,
                            ),
                            SvgPicture.asset(
                              'assets/images/hat.svg',
                              height: 34.66 * SizeConfig.imageSizeMultiplier,
                              width: 34.66 * SizeConfig.imageSizeMultiplier,
                            ),
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
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
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondIntro()));
                          },
                          child: Container(
                            height: 10 * SizeConfig.heightMultiplier,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  8.33 * SizeConfig.heightMultiplier,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                bottom: 3 * SizeConfig.heightMultiplier,
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(child: Container()),
                                    Expanded(
                                      child: Text(
                                        'Start Learning',
                                        style: SmallBlackText,
                                      ),
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                        child: SvgPicture.asset(
                                          'assets/images/arrow-left.svg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
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
