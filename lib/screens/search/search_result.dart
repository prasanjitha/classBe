import 'package:classbe/main.dart';
import 'package:classbe/screens/auth/sign_up.dart';
import 'package:classbe/screens/splash/third_intro.dart';
import 'package:classbe/styles/styles.dart';
import 'package:classbe/utils/size_config.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchResult extends StatefulWidget {
  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  List<String> sections = ['MY CLASSES', 'I CAN TEACH YOU', 'MY LIBRARY'];
  int _selectedSection = 0;
  List<String> classes = [
    'Math First Class 1st Semester Com...',
    'Math First Class 1st Semester Com...',
    'Math First Class 1st Semester Com...',
    'Math First Class 1st Semester Com...',
  ];

  List<dynamic> newClasses = [
    {
      "from": '4',
      "rating": 4.7,
      "classes": [
        'Maths First Level',
        'Maths Second Level',
        'Maths Third Level'
      ],
    },
    {
      "from": '4',
      "rating": 4.7,
      "classes": [
        'Maths First Level',
        'Maths Second Level',
        'Maths Third Level'
      ],
    },
    {
      "from": '4',
      "rating": 4.7,
      "classes": [
        'Maths First Level',
        'Maths Second Level',
        'Maths Third Level'
      ],
    },
    {
      "from": '4',
      "rating": 4.7,
      "classes": [
        'Maths First Level',
        'Maths Second Level',
        'Maths Third Level'
      ],
    },
    {
      "from": '4',
      "rating": 4.7,
      "classes": [
        'Maths First Level',
        'Maths Second Level',
        'Maths Third Level'
      ],
    },
    {
      "from": '4',
      "rating": 4.7,
      "classes": [
        'Maths First Level',
        'Maths Second Level',
        'Maths Third Level'
      ],
    },
  ];

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
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height,
                          child: ListView.builder(
                            itemCount: newClasses.length,
                            itemBuilder: (BuildContext context, index) {
                              return buildCard();
                            },
                          ),
                        )
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

  Padding buildCard() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 0, left: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 22.56 * SizeConfig.heightMultiplier,
        child: Stack(
          children: [
            Positioned(
              right: 10,
              top: 9,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54.withOpacity(0.2),
                      offset: Offset(0.0, 0.9),
                      blurRadius: 10,
                    )
                  ],
                ),
                height: 20.47 * SizeConfig.heightMultiplier,
                width: (MediaQuery.of(context).size.width -
                    (20.68 * SizeConfig.widthMultiplier)),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 5, right: 5, top: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/man.svg',
                                        height:
                                            2.95 * SizeConfig.heightMultiplier,
                                      ),
                                      Text(
                                        'Johnny Clark',
                                        style: TeacherNameClassResult,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      5,
                                    ),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(
                                              0, 0, 0, 0.3499999940395355),
                                          offset: Offset(0, 2),
                                          blurRadius: 6)
                                    ],
                                  ),
                                  height: 3.32 * SizeConfig.heightMultiplier,
                                  width: 3.32 * SizeConfig.heightMultiplier,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 1.0),
                                      child: SvgPicture.asset(
                                        'assets/images/heart.svg',
                                        height:
                                            1.84 * SizeConfig.heightMultiplier,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 0.6 * SizeConfig.heightMultiplier,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 20.5 * SizeConfig.widthMultiplier,
                                ),
                                child: Container(
                                    width: 55.46 * SizeConfig.widthMultiplier,
                                    height: 9.2 * SizeConfig.heightMultiplier,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: classes
                                          .map((e) => Text(
                                                'Math First Class 1st Semester Com...',
                                                overflow: TextOverflow.ellipsis,
                                                style: ResultClassTextName,
                                              ))
                                          .toList(),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 5,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.4 * SizeConfig.widthMultiplier),
                        width: (MediaQuery.of(context).size.width -
                            (20.68 * SizeConfig.widthMultiplier)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                                  style: RatingNumber,
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Text(
                                  '(20k Reviews)',
                                  style: RatingText,
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 0.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SvgPicture.asset('assets/images/live.svg',
                                      width: 10.93 *
                                          SizeConfig.imageSizeMultiplier,
                                      height:
                                          1.72 * SizeConfig.heightMultiplier),
                                  Text(
                                    'From \$4/Class',
                                    style: FromPricetext,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 5.91 * SizeConfig.heightMultiplier,
              bottom: 0,
              left: 0,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black54.withOpacity(0.5),
                            offset: Offset(0, 0.0),
                            blurRadius: 6),
                      ],
                    ),
                    child: SvgPicture.asset(
                      'assets/images/tv.svg',
                      height: 10.83 * SizeConfig.heightMultiplier,
                      width: 29.86 * SizeConfig.widthMultiplier,
                    ),
                  ),
                  Positioned(
                    left: 2.4 * SizeConfig.widthMultiplier,
                    right: 0,
                    top: 1.9 * SizeConfig.heightMultiplier,
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            'Revision Class',
                            style: SmallBoldRedText,
                            textAlign: TextAlign.center,
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Text(
                            'Maths',
                            style: ResultClassName,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
