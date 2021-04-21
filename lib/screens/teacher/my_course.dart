import 'package:classbe/main.dart';
import 'package:classbe/screens/auth/sign_up.dart';
import 'package:classbe/screens/splash/third_intro.dart';
import 'package:classbe/styles/styles.dart';
import 'package:classbe/utils/size_config.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCourse extends StatefulWidget {
  @override
  _MyCourseState createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {
  String role = 'Teacher';

  final _formKey = GlobalKey<FormState>();
  bool hidden = true;

  TextEditingController _username = TextEditingController();
  TextEditingController _pass = TextEditingController();

  List<String> sections = ['MY CLASSES', 'I CAN TEACH YOU', 'MY LIBRARY'];
  int _selectedSection = 0;
  List<String> classes = [
    'Maths First Level',
    'Maths Second Level',
    'Maths Third Level'
  ];

  List<dynamic> options = [
    {"text": "Select All", "secondary": "(5% OFF)", "price": "\$11"},
    {
      "text": "Saturday 08:00 - 09:00 PM",
      "secondary": "(5% OFF)",
      "price": "\$4"
    },
    {
      "text": "Saturday 08:00 - 09:00 PM",
      "secondary": "(5% OFF)",
      "price": "\$4"
    },
    {
      "text": "Saturday 08:00 - 09:00 PM",
      "secondary": "(5% OFF)",
      "price": "\$4"
    },
    {
      "text": "Saturday 08:00 - 09:00 PM",
      "secondary": "(5% OFF)",
      "price": "\$4"
    },
    {
      "text": "Saturday 08:00 - 09:00 PM",
      "secondary": "(5% OFF)",
      "price": "\$4"
    },
  ];

  int _selectedOption = 0;

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
                child: SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 26.85 * SizeConfig.heightMultiplier,
                              // width: 336,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                                border:
                                    Border.all(width: 5, color: Colors.black),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(
                                        0, 0, 0, 0.3499999940395355),
                                    offset: Offset(0, 2),
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Revision Class',
                                      style: CourseRedTitle,
                                    ),
                                    GestureDetector(
                                      onTap: () => Navigator.pop(context),
                                      child: Text(
                                        'Maths',
                                        style: CourseBlackTitle,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 0.99 * SizeConfig.heightMultiplier,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/big-man.svg',
                                      width: 16.75 *
                                          SizeConfig.imageSizeMultiplier,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left:
                                              2.0 * SizeConfig.widthMultiplier),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Johnny Tony Clark',
                                            style: NameTitle,
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                'assets/images/star.svg',
                                              ),
                                              SizedBox(
                                                width: 1,
                                              ),
                                              Text(
                                                '4.7',
                                                style: RatingNumber.copyWith(
                                                    color: Colors.black),
                                              ),
                                              SizedBox(
                                                width: 1,
                                              ),
                                              Text(
                                                '(20k Reviews)',
                                                style: RatingText.copyWith(
                                                    color: Colors.black),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(
                                          1 * SizeConfig.widthMultiplier),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          5,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.3499999940395355),
                                              offset: Offset(0, 2),
                                              blurRadius: 6)
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Report',
                                            style: SmallBoldRedText,
                                          ),
                                          SvgPicture.asset(
                                            'assets/images/report.svg',
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 0.99 * SizeConfig.heightMultiplier,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      5,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(
                                              0, 0, 0, 0.3499999940395355),
                                          offset: Offset(0, 2),
                                          blurRadius: 6)
                                    ],
                                  ),
                                  height: 5.04 * SizeConfig.heightMultiplier,
                                  width: 28.26 * SizeConfig.widthMultiplier,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: 2.0 *
                                                SizeConfig.widthMultiplier),
                                        child: Text(
                                          'Like',
                                          style: SmallBoldRedText,
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        'assets/images/heart.svg',
                                        height:
                                            1.35 * SizeConfig.heightMultiplier,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      5,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(
                                              0, 0, 0, 0.3499999940395355),
                                          offset: Offset(0, 2),
                                          blurRadius: 6)
                                    ],
                                  ),
                                  height: 5.04 * SizeConfig.heightMultiplier,
                                  width: 28.26 * SizeConfig.widthMultiplier,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: 2.0 *
                                                SizeConfig.widthMultiplier),
                                        child: Text(
                                          'Chat',
                                          style: SmallBoldGreenText.copyWith(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        'assets/images/chat.svg',
                                        height:
                                            1.35 * SizeConfig.heightMultiplier,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      5,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(
                                              0, 0, 0, 0.3499999940395355),
                                          offset: Offset(0, 2),
                                          blurRadius: 6)
                                    ],
                                  ),
                                  height: 5.04 * SizeConfig.heightMultiplier,
                                  width: 28.26 * SizeConfig.widthMultiplier,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: 2.0 *
                                                SizeConfig.widthMultiplier),
                                        child: Text(
                                          'Share',
                                          style: SmallBoldGreenText.copyWith(
                                              fontWeight: FontWeight.w900,
                                              color: PrimaryBlue),
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        'assets/images/share.svg',
                                        height:
                                            1.35 * SizeConfig.heightMultiplier,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.29 * SizeConfig.heightMultiplier,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.topRight,
                                      colors: [
                                        Color(0xff36A6FE),
                                        Color(0xff3183FF)
                                      ],
                                      tileMode: TileMode.repeated,
                                    ),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      5,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(
                                              0, 0, 0, 0.3499999940395355),
                                          offset: Offset(0, 2),
                                          blurRadius: 6)
                                    ],
                                  ),
                                  height: 3 * SizeConfig.heightMultiplier,
                                  width: 28.26 * SizeConfig.widthMultiplier,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: 2.0 *
                                                SizeConfig.widthMultiplier),
                                        child: Text(
                                          'Certificates',
                                          style: SmallBoldGreenText.copyWith(
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.99 * SizeConfig.heightMultiplier,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.topRight,
                                      colors: [
                                        Color(0xff36A6FE),
                                        Color(0xff3183FF)
                                      ],
                                      tileMode: TileMode.repeated,
                                    ),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      5,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(
                                              0, 0, 0, 0.3499999940395355),
                                          offset: Offset(0, 2),
                                          blurRadius: 6)
                                    ],
                                  ),
                                  height: 3.32 * SizeConfig.heightMultiplier,
                                  width: 48 * SizeConfig.widthMultiplier,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: 2.0 *
                                                SizeConfig.widthMultiplier),
                                        child: Text(
                                          'Math First Level',
                                          style: CourseLevel,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      5,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(
                                              0, 0, 0, 0.3499999940395355),
                                          offset: Offset(0, 2),
                                          blurRadius: 6)
                                    ],
                                  ),
                                  height: 3.32 * SizeConfig.heightMultiplier,
                                  width: 30.93 * SizeConfig.widthMultiplier,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/facebook.svg',
                                        width:
                                            2.33 * SizeConfig.heightMultiplier,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          'Not Connected',
                                          style: DemiBoldblue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.99 * SizeConfig.heightMultiplier,
                            ),
                            Text(
                              'Math First Class 1st Semester Complete Course.',
                              style: CourseName,
                            ),
                            SizedBox(
                              height: 1.99 * SizeConfig.heightMultiplier,
                            ),
                            ExpandableText(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nibh dis aliquam sem commodo varius sagittis, dignissim feugiat urna. Urna magnis scelerisque faucibus sed eget hendrerit nisl, consequat. Morbi velit amet, augue condimentum ut. Elementum magna vulputate semper elit consequat quisque neque quam dictum. Dictumst feugiat amet non proin amet tellus Molues...',
                              trimLines: 4,
                            ),
                            SizedBox(
                              height: 1.99 * SizeConfig.heightMultiplier,
                            ),
                            Column(
                              children: options
                                  .asMap()
                                  .map((index, e) => MapEntry(
                                      index,
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: 1.4 *
                                                SizeConfig.heightMultiplier),
                                        child: Container(
                                          height: 4.31 *
                                              SizeConfig.heightMultiplier,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromRGBO(0, 0, 0,
                                                    0.3499999940395355),
                                                offset: Offset(0, 2),
                                                blurRadius: 6,
                                              )
                                            ],
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      '${options[index]['text']}',
                                                      style: ChoiceText,
                                                    ),
                                                    index == 0
                                                        ? Padding(
                                                            padding: EdgeInsets.only(
                                                                left: 2.1 *
                                                                    SizeConfig
                                                                        .widthMultiplier),
                                                            child: Text(
                                                              '${options[index]['secondary']}',
                                                              style:
                                                                  ChoiceReduction,
                                                            ),
                                                          )
                                                        : Container()
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 2.1 *
                                                              SizeConfig
                                                                  .widthMultiplier),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            _selectedOption =
                                                                index;
                                                          });
                                                        },
                                                        child: Container(
                                                          height: 2.1 *
                                                              SizeConfig
                                                                  .heightMultiplier,
                                                          width: 2.1 *
                                                              SizeConfig
                                                                  .heightMultiplier,
                                                          decoration:
                                                              BoxDecoration(
                                                                  border: Border
                                                                      .all(
                                                                    width: 2,
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              3)),
                                                          child: Padding(
                                                            padding: EdgeInsets
                                                                .all(0.4 *
                                                                    SizeConfig
                                                                        .heightMultiplier),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: _selectedOption ==
                                                                        index
                                                                    ? SecondaryBlue
                                                                    : Colors
                                                                        .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      '${options[index]['price']}',
                                                      style: ChoicePrice,
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      )))
                                  .values
                                  .toList(),
                            ),
                            // COUPON SECTION
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Offer Code?',
                                      style: ChoiceText,
                                    ),
                                    SizedBox(
                                      height:
                                          0.99 * SizeConfig.heightMultiplier,
                                    ),
                                    Container(
                                      height:
                                          4.31 * SizeConfig.heightMultiplier,
                                      width: 43.2 * SizeConfig.widthMultiplier,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromRGBO(
                                                0, 0, 0, 0.3499999940395355),
                                            offset: Offset(0, 2),
                                            blurRadius: 6,
                                          )
                                        ],
                                      ),
                                      child: Stack(
                                        children: [
                                          TextFormField(
                                            controller: _username,
                                            autofillHints: [
                                              AutofillHints.name,
                                            ],
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      vertical: 0.95 *
                                                          SizeConfig
                                                              .heightMultiplier,
                                                      horizontal: 4.2 *
                                                          SizeConfig
                                                              .widthMultiplier),
                                              fillColor: Colors.white,
                                              hintText: 'Coupon',
                                              hintStyle: TextStyle(
                                                  fontFamily: 'VisbyCF',
                                                  color: Colors.black
                                                      .withOpacity(0.45),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 2.1 *
                                                      SizeConfig
                                                          .textMultiplier),
                                            ),
                                            validator: (value) {
                                              if (value == '') {
                                                return 'This field is required';
                                              }
                                              return null;
                                            },
                                          ),
                                          Positioned(
                                            right: 0,
                                            child: GestureDetector(
                                              onTap: () {
                                                // APPLY COUPON
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0,
                                                          0,
                                                          0,
                                                          0.3499999940395355),
                                                      offset: Offset(0, 2),
                                                      blurRadius: 6,
                                                    )
                                                  ],
                                                ),
                                                width: 14.93 *
                                                    SizeConfig.widthMultiplier,
                                                height: 4.31 *
                                                    SizeConfig.heightMultiplier,
                                                child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      'Apply',
                                                      style:
                                                          ChoiceText.copyWith(
                                                        color: PrimaryBlue,
                                                      ),
                                                    )),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Total :',
                                            style: ChoiceText.copyWith(
                                              color: PrimaryBlue,
                                            )),
                                        Text(
                                          '\$11',
                                          style: ChoicePrice,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          0.99 * SizeConfig.heightMultiplier,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: SecondaryGreen,
                                        borderRadius: BorderRadius.circular(5),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromRGBO(
                                                0, 0, 0, 0.3499999940395355),
                                            offset: Offset(0, 2),
                                            blurRadius: 6,
                                          )
                                        ],
                                      ),
                                      height:
                                          4.31 * SizeConfig.heightMultiplier,
                                      width: 32.53 * SizeConfig.widthMultiplier,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 3.0),
                                            child: Text(
                                              'Join Class',
                                              style: JoinClassText,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 3.0),
                                            child: SvgPicture.asset(
                                              'assets/images/green_check.svg',
                                              height: 2.21 *
                                                  SizeConfig.heightMultiplier,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 1.99 * SizeConfig.heightMultiplier,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 4.8 * SizeConfig.widthMultiplier),
                                  child: Text(
                                    'Not Sure?',
                                    style: ChoiceText.copyWith(
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: SecondaryGreen,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(
                                            0, 0, 0, 0.3499999940395355),
                                        offset: Offset(0, 2),
                                        blurRadius: 6,
                                      )
                                    ],
                                  ),
                                  height: 4.31 * SizeConfig.heightMultiplier,
                                  width: 64.13 * SizeConfig.widthMultiplier,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 3.0),
                                        child: Text(
                                          'Join Class For 10 Minutes',
                                          style: JoinClassText,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 3.0),
                                        child: SvgPicture.asset(
                                          'assets/images/green_check.svg',
                                          height: 2.21 *
                                              SizeConfig.heightMultiplier,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 2.99 * SizeConfig.heightMultiplier,
                            ),
                          ],
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

class ExpandableText extends StatefulWidget {
  const ExpandableText(
    this.text, {
    Key key,
    this.trimLines = 2,
  })  : assert(text != null),
        super(key: key);

  final String text;
  final int trimLines;

  @override
  ExpandableTextState createState() => ExpandableTextState();
}

class ExpandableTextState extends State<ExpandableText> {
  GlobalKey key = GlobalKey();
  bool _readMore = true;
  void _onTapLink() {
    setState(() => _readMore = !_readMore);
  }

  @override
  Widget build(BuildContext context) {
    final DefaultTextStyle defaultTextStyle = DefaultTextStyle.of(context);
    final colorClickableText = Colors.blue;
    final widgetColor = Colors.black;
    TextSpan link = TextSpan(
      text: _readMore ? "...See more" : " See less",
      style: TextStyle(
        color: colorClickableText,
      ),
      recognizer: TapGestureRecognizer()..onTap = _onTapLink,
    );
    Widget result = LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        assert(constraints.hasBoundedWidth);
        final double maxWidth = constraints.maxWidth;
        // Create a TextSpan with data
        final text = TextSpan(
          text: widget.text,
        );
        // Layout and measure link
        TextPainter textPainter = TextPainter(
          text: link,
          textDirection: TextDirection
              .rtl, //better to pass this from master widget if ltr and rtl both supported
          maxLines: widget.trimLines,
          ellipsis: '...',
        );
        textPainter.layout(minWidth: constraints.minWidth, maxWidth: maxWidth);
        final linkSize = textPainter.size;
        // Layout and measure text
        textPainter.text = text;
        textPainter.layout(minWidth: constraints.minWidth, maxWidth: maxWidth);
        final textSize = textPainter.size;
        // Get the endIndex of data
        int endIndex;
        final pos = textPainter.getPositionForOffset(Offset(
          textSize.width - linkSize.width,
          textSize.height,
        ));
        endIndex = textPainter.getOffsetBefore(pos.offset);
        var textSpan;
        if (textPainter.didExceedMaxLines) {
          textSpan = TextSpan(
            text: _readMore ? widget.text.substring(0, endIndex) : widget.text,
            style: CourseText,
            children: <TextSpan>[link],
          );
        } else {
          textSpan = TextSpan(text: widget.text, style: CourseText);
        }

        return !_readMore
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.3499999940395355),
                        offset: Offset(0, 2),
                        blurRadius: 6,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description :',
                        style: SmallExtraBoldBlueSubText,
                      ),
                      SizedBox(
                        height: 0.99 * SizeConfig.heightMultiplier,
                      ),
                      RichText(
                        softWrap: true,
                        overflow: TextOverflow.clip,
                        text: textSpan,
                      ),
                    ],
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width,
                  height: 15.88 * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.3499999940395355),
                        offset: Offset(0, 2),
                        blurRadius: 6,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description :',
                        style: SmallExtraBoldBlueSubText,
                      ),
                      SizedBox(
                        height: 0.99 * SizeConfig.heightMultiplier,
                      ),
                      RichText(
                        softWrap: true,
                        overflow: TextOverflow.clip,
                        text: textSpan,
                      ),
                    ],
                  ),
                ),
              );
      },
    );
    return result;
  }
}
