import 'package:classbe/screens/auth/googlesignin.dart';
import 'package:classbe/screens/auth/home_page.dart';
import 'package:classbe/screens/auth/home_page2signup.dart';
import 'package:classbe/screens/auth/sign_in.dart';
import 'package:classbe/screens/auth/sign_up.dart';
import 'package:classbe/screens/splash/third_intro.dart';
import 'package:classbe/styles/styles.dart';
import 'package:classbe/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/rotate-hat.svg',
                                    height:
                                        22.29 * SizeConfig.imageSizeMultiplier,
                                    width:
                                        22.29 * SizeConfig.imageSizeMultiplier,
                                  ),
                                  Text(
                                    'ClassBe',
                                    style: ExtraBigBoldAuthHeading.copyWith(
                                      height: 0.6,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 11.99 * SizeConfig.heightMultiplier,
                        ),
                        Text(
                          'Online Classes',
                          style: SmallBoldBlackWelcomeText.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 11.99 * SizeConfig.heightMultiplier,
                        ),
                        Container(
                          height: 5.91 * SizeConfig.heightMultiplier,
                          width: MediaQuery.of(context).size.width,
                          child: RaisedButton(
                            elevation: 0,
                            textColor: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage1()));
                            },
                            child: Text(
                              'Sign Up',
                              style: AuthWhiteText,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.99 * SizeConfig.heightMultiplier,
                        ),
                        Container(
                          height: 5.91 * SizeConfig.heightMultiplier,
                          width: MediaQuery.of(context).size.width,
                          child: RaisedButton(
                            color: Colors.white,
                            elevation: 0,
                            textColor: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            child: Text('Sign In',
                                style:
                                    AuthWhiteText.copyWith(color: PrimaryBlue)),
                          ),
                        ),
                        SizedBox(
                          height: 11.99 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Text(
                            'Skip for now',
                            style: AuthSkipText,
                          ),
                        ),
                        SizedBox(
                          height: 2.99 * SizeConfig.heightMultiplier,
                        ),
                      ],
                    ),
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
