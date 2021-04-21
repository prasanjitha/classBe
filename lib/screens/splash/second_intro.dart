import 'package:classbe/screens/splash/third_intro.dart';
import 'package:classbe/styles/styles.dart';
import 'package:classbe/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondIntro extends StatefulWidget {
  @override
  _SecondIntroState createState() => _SecondIntroState();
}

class _SecondIntroState extends State<SecondIntro> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            // print(SizeConfig.imageSizeMultiplier);
            return Scaffold(
              body: SafeArea(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 80,
                              ),
                              GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/rotate-hat.svg',
                                      height:
                                          14 * SizeConfig.imageSizeMultiplier,
                                      width:
                                          14 * SizeConfig.imageSizeMultiplier,
                                    ),
                                    Text(
                                      'ClassBe',
                                      style: BigBolgClassBe.copyWith(
                                          fontSize:
                                              6 * SizeConfig.textMultiplier),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80,
                                height: 8.88 * SizeConfig.heightMultiplier,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right:
                                              4 * SizeConfig.widthMultiplier),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'Skip',
                                          style: SkipText,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 1.5 * SizeConfig.heightMultiplier,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Every one is ',
                                    style: BigBoldSecondBlueHeading),
                                TextSpan(
                                    text: 'FREE ',
                                    style: BigExtraBoldBlueHeading),
                                TextSpan(
                                    text: 'to ',
                                    style: BigBoldSecondBlueHeading),
                                TextSpan(
                                    text: 'join...',
                                    style: BigExtraBoldBlueHeading),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 2 * SizeConfig.heightMultiplier,
                          ),
                          SvgPicture.asset(
                            'assets/images/teaching.svg',
                            width: 55.13 * SizeConfig.imageSizeMultiplier,
                            height: 55 * SizeConfig.imageSizeMultiplier,
                          ),
                          SizedBox(
                            height: 2 * SizeConfig.heightMultiplier,
                          ),
                          Text(
                            '1 on 1 Classes OR Group Classes',
                            style: OneOnOne,
                            textAlign: TextAlign.center,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'up to',
                                    style: BigBoldSecondBlueHeading.copyWith(
                                        fontWeight: FontWeight.w900)),
                                TextSpan(text: '\n'),
                                TextSpan(
                                  text: '1000 ',
                                  style: BigExtraBoldBlueHeading.copyWith(
                                      fontSize: 5 * SizeConfig.textMultiplier,
                                      height: 1),
                                ),
                                TextSpan(
                                  text: 'Students !',
                                  style: BigBoldSecondBlueHeading.copyWith(
                                      fontWeight: FontWeight.w900, height: 1),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'The most ADVANCED and \n',
                                    style: SmallBoldGreyText),
                                TextSpan(
                                    text: 'comfortable online teaching \n',
                                    style: SmallBoldGreyText),
                                TextSpan(
                                  text: 'enviroment with same gender \n',
                                  style: SmallBoldGreyText,
                                ),
                                TextSpan(
                                  text: 'classes and',
                                  style: SmallBoldGreyText,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 1 * SizeConfig.heightMultiplier,
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Only ',
                                  style: SmallBoldSecondBlueHeading,
                                ),
                                TextSpan(
                                  text: 'REAL',
                                  style: SmallExtraBoldBlueHeading,
                                ),
                                TextSpan(
                                    text: 'Teachers and Students \n',
                                    style: SmallBoldSecondBlueHeading),
                                TextSpan(
                                    text: 'Live Lessons!',
                                    style: SmallBoldGreyText),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 35 * SizeConfig.widthMultiplier,
                            ),
                            Container(
                              width: 60,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 1.5 * SizeConfig.heightMultiplier,
                                    width: 1.5 * SizeConfig.heightMultiplier,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: PrimaryBlue,
                                    ),
                                  ),
                                  Container(
                                    height: 1.5 * SizeConfig.heightMultiplier,
                                    width: 1.5 * SizeConfig.heightMultiplier,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                            color: PrimaryBlue, width: 1)),
                                  ),
                                  Container(
                                    height: 1.5 * SizeConfig.heightMultiplier,
                                    width: 1.5 * SizeConfig.heightMultiplier,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                            color: PrimaryBlue, width: 1)),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ThirdIntro()));
                              },
                              child: Container(
                                padding: EdgeInsets.only(right: 10),
                                width: 40 * SizeConfig.widthMultiplier,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: PrimaryBlue,
                                    borderRadius: BorderRadius.circular(
                                      30,
                                    ),
                                  ),
                                  height: 4.92 * SizeConfig.heightMultiplier,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Next ',
                                          style: SmallExtraBoldWhiteHeading
                                              .copyWith(
                                            height: 1,
                                          ),
                                        ),
                                        // SvgPicture.asset(
                                        //   'assets/images/chevron-left.svg',
                                        // ),
                                        SvgPicture.asset(
                                          'assets/images/chevron-left.svg',
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
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
