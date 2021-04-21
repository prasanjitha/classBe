import 'dart:ui';

import 'package:classbe/screens/splash/fourth_intro.dart';
import 'package:classbe/styles/styles.dart';
import 'package:classbe/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThirdIntro extends StatefulWidget {
  @override
  _ThirdIntroState createState() => _ThirdIntroState();
}

class _ThirdIntroState extends State<ThirdIntro> {
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
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Get an Online FREE teaching\n',
                                    style: BigBoldSecondBlueHeading.copyWith(
                                        fontWeight: FontWeight.w900)),
                                TextSpan(
                                    text: 'JOB ',
                                    style: BigExtraBoldBlueHeading.copyWith(
                                        fontWeight: FontWeight.w900)),
                                TextSpan(
                                    text: 'in less than a minute!',
                                    style: BigBoldSecondBlueHeading.copyWith(
                                        fontWeight: FontWeight.w900)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 2 * SizeConfig.heightMultiplier,
                          ),
                          Image.asset(
                            'assets/images/fastscreen.png',
                            width: 90.13 * SizeConfig.imageSizeMultiplier,
                            height: 75 * SizeConfig.imageSizeMultiplier,
                          ),

                          SizedBox(
                            height: 1 * SizeConfig.heightMultiplier,
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'The ', style: SmallBoldGreyText),
                                TextSpan(
                                  text: 'FASTEST \n\n',
                                  style: SmallExtraBoldBlueHeading,
                                ),
                                TextSpan(
                                    text: 'Top Quality ',
                                    style: SmallBoldGreyText),
                                TextSpan(
                                  text: 'Live HD Video ',
                                  style: SmallExtraBoldBlueHeading,
                                ),
                                TextSpan(
                                    text: 'Classes with \n',
                                    style: SmallBoldGreyText),
                                TextSpan(
                                  text:
                                      'the Most Functional and easy interactive \n',
                                  style: SmallBoldGreyText,
                                ),
                                TextSpan(
                                  text:
                                      'Online Teaching Tools and Boards... \n\n ',
                                  style: SmallBoldGreyText,
                                ),
                                TextSpan(
                                  text: 'Be in Control of your Class!',
                                  style: SmallBoldGreyText,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 1 * SizeConfig.heightMultiplier,
                          ),
                          // RichText(
                          //   textAlign: TextAlign.center,
                          //   text: TextSpan(
                          //     children: [
                          //       TextSpan(
                          //         text: 'Only ',
                          //         style: SmallBoldSecondBlueHeading,
                          //       ),
                          //       TextSpan(
                          //         text: 'REAL',
                          //         style: SmallExtraBoldBlueHeading,
                          //       ),
                          //       TextSpan(
                          //           text: 'Teachers and Students \n',
                          //           style: SmallBoldSecondBlueHeading),
                          //       TextSpan(
                          //           text: 'Live Lessons!',
                          //           style: SmallBoldGreyText),
                          //     ],
                          //   ),
                          // ),
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
                                        color: Colors.white,
                                        border: Border.all(
                                            color: PrimaryBlue, width: 1)),
                                  ),
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
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FourthIntro()));
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
