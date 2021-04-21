import 'package:classbe/screens/teacher/my_course.dart';
import 'package:classbe/screens/teacher/my_office.dart';
import 'package:classbe/utils/size_config.dart';
import 'package:flutter/material.dart';

///red color of theme
const Color PrimaryRed = Color(0xFFDE2121);
const Color PrimaryBlue = Color(0xFF008EFF);
const Color SecondaryBlue = Color(0xFF41C2FF);
const Color PrimaryGreen = Color(0xFF009C0A);
const Color SecondaryGreen = Color(0xFF00AA0B);
const Color PriceGreen = Color(0xFF0FB817);
const Color PrimaryGrey = Color(0xFFD8D8D8);
const Color SecondaryGrey = Color(0xFF5E5E5E);

///grey color for input fields
const Color InputFieldGrey = Color(0xFFf4f4f4);

Color inactiveIconGrey = Colors.black.withOpacity(0.3);

///bold lora headings for page titles

final TextStyle ExtraBigBoldAuthHeading = TextStyle(
  fontFamily: 'VisbyCF',
  fontWeight: FontWeight.w700,
  fontSize: 9 * SizeConfig.textMultiplier,
  color: PrimaryBlue,
);

final TextStyle BigBoldWelcomeHeading = TextStyle(
  fontFamily: 'VisbyCF',
  fontWeight: FontWeight.w700,
  fontSize: 9.3 * SizeConfig.textMultiplier,
  color: PrimaryBlue,
);

final TextStyle BigBolgWhiteHeading = TextStyle(
  fontFamily: 'VisbyCF',
  fontWeight: FontWeight.w900,
  fontSize: 4 * SizeConfig.textMultiplier,
  color: Colors.white,
);

final TextStyle BigBolgClassBe = TextStyle(
    fontFamily: 'VisbyCF',
    fontWeight: FontWeight.w700,
    fontSize: 7.19 * SizeConfig.textMultiplier,
    color: PrimaryBlue,
    height: 0.7);

const TextStyle BigBoldHeading = TextStyle(
  fontFamily: 'VisbyCF',
  fontWeight: FontWeight.bold,
  fontSize: 30,
);

final TextStyle SearchBarStyle = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.84 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.bold,
  color: Colors.black.withOpacity(0.45),
);

final TextStyle SubHead = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.6 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

final TextStyle BigBoldBlueHeading = TextStyle(
  fontFamily: 'VisbyCF',
  fontWeight: FontWeight.bold,
  fontSize: 3.69 * SizeConfig.textMultiplier,
  color: PrimaryBlue,
);

final TextStyle BigExtraBoldBlueHeading = TextStyle(
  fontFamily: 'VisbyCF',
  fontWeight: FontWeight.w900,
  fontSize: 2.8 * SizeConfig.textMultiplier,
  color: PrimaryBlue,
);

final TextStyle BigBoldSecondBlueHeading = TextStyle(
  fontFamily: 'VisbyCF',
  fontWeight: FontWeight.bold,
  fontSize: 2.8 * SizeConfig.textMultiplier,
  color: SecondaryBlue,
);

///generic open sans headings with fontsize 18

final TextStyle WhiteGreenHeading = TextStyle(
  fontFamily: 'VisbyCF',
  fontWeight: FontWeight.bold,
  fontSize: 1.97 * SizeConfig.textMultiplier,
  height: 1,
  color: PrimaryGreen,
);

final TextStyle BlueCaps = TextStyle(
    fontFamily: 'VisbyCF',
    fontSize: 1.47 * SizeConfig.textMultiplier,
    color: PrimaryBlue,
    fontWeight: FontWeight.w900);

///subtitle text, grey and sans-serif typeface, fontsize 13
final TextStyle BlueSubtitle = TextStyle(
    fontFamily: 'VisbyCF',
    fontSize: 1.20 * SizeConfig.textMultiplier,
    color: PrimaryBlue,
    fontWeight: FontWeight.bold);

final TextStyle ClassSubtitle = TextStyle(
    fontFamily: 'VisbyCF',
    fontSize: 1.97 * SizeConfig.textMultiplier,
    color: Colors.black,
    fontWeight: FontWeight.w900);

final TextStyle NameTitle = TextStyle(
    fontFamily: 'VisbyCF',
    fontSize: 2.21 * SizeConfig.textMultiplier,
    color: Colors.black,
    fontWeight: FontWeight.w700);

final TextStyle WelcomeSubtitle = TextStyle(
    fontFamily: 'VisbyCF',
    fontSize: 3.66 * SizeConfig.textMultiplier,
    color: Colors.black,
    fontWeight: FontWeight.w600);

final TextStyle OneOnOne = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 2.44 * SizeConfig.textMultiplier,
  color: PrimaryBlue,
  fontWeight: FontWeight.w900,
  shadows: <Shadow>[
    Shadow(
      offset: Offset(0, 2),
      blurRadius: 15.0,
      color: Colors.black54.withOpacity(0.3),
    ),
  ],
);

final TextStyle AuthRole = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 2.33 * SizeConfig.textMultiplier,
  color: Colors.white,
  fontWeight: FontWeight.w900,
);

///Red, bold text used for small, navigation buttons, fontsize 12
final TextStyle SmallDescText = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.72 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

final TextStyle SmallBoldGreenText = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.72 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.bold,
  color: PrimaryGreen,
);

final TextStyle SmallBoldRequestBlueText = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.47 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w900,
  color: PrimaryBlue,
);

final TextStyle FieldNameText = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 3.69 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w700,
  color: Colors.black,
);

final TextStyle RatingNumber = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.47 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w900,
  color: PrimaryBlue,
);

final TextStyle RatingText = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.48 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w500,
  color: PrimaryBlue,
);

final TextStyle SmallBoldRedText = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.47 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w900,
  color: PrimaryRed,
);

final TextStyle SmallExtraBoldBlueText = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.9 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w900,
  color: PrimaryBlue,
);

final TextStyle SmallExtraBoldBlueSubText = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.72 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w900,
  color: PrimaryBlue,
);

final TextStyle SmallBoldBlackWelcomeText = TextStyle(
    fontFamily: 'VisbyCF',
    fontSize: 1.95 * SizeConfig.textMultiplier,
    fontWeight: FontWeight.w900,
    color: Colors.black,
    letterSpacing: 2,
    height: 0.5);

const TextStyle SmallBoldBlackText = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

final TextStyle SmallBlackText = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 2.24 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w500,
  color: Colors.black,
);

final TextStyle SkipText = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 2.24 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w900,
  color: Colors.black.withOpacity(0.5),
);

final TextStyle SmallBoldGreyText = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 2.1 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w900,
  color: Color(0xff7D7D7D),
);

final TextStyle SmallExtraBoldBlueHeading = TextStyle(
  fontFamily: 'VisbyCF',
  fontWeight: FontWeight.w900,
  fontSize: 2.3 * SizeConfig.textMultiplier,
  color: PrimaryBlue,
);

final TextStyle SmallBoldSecondBlueHeading = TextStyle(
  fontFamily: 'VisbyCF',
  fontWeight: FontWeight.bold,
  fontSize: 2.3 * SizeConfig.textMultiplier,
  color: SecondaryBlue,
);

final TextStyle SmallExtraBoldWhiteHeading = TextStyle(
  fontFamily: 'VisbyCF',
  fontWeight: FontWeight.w900,
  fontSize: 2.25 * SizeConfig.textMultiplier,
  color: Colors.white,
);

final TextStyle SmallAuthText = TextStyle(
  fontFamily: 'VisbyCF',
  fontWeight: FontWeight.w500,
  fontSize: 2.25 * SizeConfig.textMultiplier,
  color: Colors.black,
);

final TextStyle AuthWhiteText = TextStyle(
  fontFamily: 'VisbyCF',
  fontWeight: FontWeight.w900,
  fontSize: 2.3 * SizeConfig.textMultiplier,
  color: Colors.white,
);

final TextStyle AuthSkipText = TextStyle(
  fontFamily: 'VisbyCF',
  fontWeight: FontWeight.w600,
  fontSize: 2.69 * SizeConfig.textMultiplier,
  color: PrimaryBlue,
);

final TextStyle SignInWithText = TextStyle(
  fontFamily: 'VisbyCF',
  fontWeight: FontWeight.w700,
  fontSize: 2.09 * SizeConfig.textMultiplier,
  color: Colors.black,
);

//  MyOffice

final TextStyle WelcomeOffice = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 2.46 * SizeConfig.textMultiplier,
  color: PrimaryBlue,
  fontWeight: FontWeight.w900,
);

final TextStyle DemiBoldblue = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.47 * SizeConfig.textMultiplier,
  color: PrimaryBlue,
  fontWeight: FontWeight.w500,
);

final TextStyle AddBlueText = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.72 * SizeConfig.textMultiplier,
  color: PrimaryBlue,
  fontWeight: FontWeight.w900,
);

final TextStyle SectionStyle = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.72 * SizeConfig.textMultiplier,
  color: Colors.black,
  fontWeight: FontWeight.w500,
);
final TextStyle DropDownStyle = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 2 * SizeConfig.textMultiplier,
  color: Colors.white,
  fontWeight: FontWeight.w700,
);

final TextStyle HeadSectionStyle = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.72 * SizeConfig.textMultiplier,
  color: Colors.white,
  fontWeight: FontWeight.w900,
);

final TextStyle ClassTextStyle = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.72 * SizeConfig.textMultiplier,
  color: PrimaryBlue,
  fontWeight: FontWeight.w900,
);

//  MyCourse

final TextStyle CourseRedTitle = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 4.43 * SizeConfig.textMultiplier,
  color: PrimaryRed,
  fontWeight: FontWeight.w900,
);

final TextStyle CourseBlackTitle = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 11.82 * SizeConfig.textMultiplier,
  color: Colors.black,
  fontWeight: FontWeight.w900,
);

final TextStyle CourseLevel = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.72 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w900,
  color: Colors.white,
);

final TextStyle CourseText = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.47 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

final TextStyle CourseName = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 2.21 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w900,
  color: PrimaryBlue,
);

final TextStyle ChoiceText = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.97 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w600,
  color: SecondaryGrey,
);

final TextStyle ChoiceReduction = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.97 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w600,
  color: PrimaryRed,
);

final TextStyle ChoicePrice = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.97 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w600,
  color: PrimaryGreen,
);

final TextStyle JoinClassText = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.97 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w900,
  color: Colors.white,
);

// SEARCH RESULT

final TextStyle FromPricetext = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.97 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w600,
  color: PriceGreen,
);

final TextStyle TeacherNameClassResult = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.97 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w600,
  color: PrimaryBlue,
);

final TextStyle ResultClassName = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 3.69 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

final TextStyle ResultClassTextName = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.72 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

// EXPLORE RESPONSIVE

final TextStyle HomeSmallGreenBold = TextStyle(
  fontFamily: 'VisbyCF',
  fontSize: 1.23 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.w900,
  color: PrimaryGreen,
);

///circular border radius with value 10
final buttonBorderRadius = BorderRadius.circular(10);

///cicular border radius with value 12
final imageBorderRadius = BorderRadius.circular(12);
