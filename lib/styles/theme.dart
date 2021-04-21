import 'package:classbe/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'styles.dart';

final ThemeData themeData = ThemeData(
  fontFamily: 'VisbyCF',
  primaryColor: PrimaryBlue,
  accentColor: PrimaryBlue,
  canvasColor: Colors.white,
  dividerColor: inactiveIconGrey,
  appBarTheme: AppBarTheme(
    elevation: 0,
    color: Colors.white,
    brightness: Brightness.light,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: PrimaryBlue,
    unselectedItemColor: inactiveIconGrey,
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),
  // buttonTheme: ButtonThemeData(
  //   buttonColor: PrimaryRed,
  //   shape: RoundedRectangleBorder(
  //     borderRadius: BorderRadius.circular(10),
  //   ),
  // ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateColor.resolveWith(
        (_) => PrimaryBlue,
      ),
    ),
  ),
  buttonColor: PrimaryBlue,
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    minWidth: 88,
    height: 48,
    buttonColor: PrimaryBlue,
    padding: EdgeInsets.only(left: 20, right: 20),
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: PrimaryBlue,
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    focusColor: PrimaryBlue,
    hintStyle: TextStyle(
      fontFamily: 'VisbyCF',
      color: Colors.black.withOpacity(0.45),
      fontWeight: FontWeight.w500,
    ),
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(
      borderRadius: buttonBorderRadius,
      gapPadding: 10,
      borderSide: BorderSide.none,
    ),
  ),
  pageTransitionsTheme: PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  }),
  snackBarTheme: SnackBarThemeData(
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: buttonBorderRadius,
    ),
    backgroundColor: PrimaryBlue,
    contentTextStyle: TextStyle(
      fontFamily: 'VisbyCF',
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  ),
  dialogTheme: DialogTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
