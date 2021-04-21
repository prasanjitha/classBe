import 'package:classbe/styles/styles.dart';
import 'package:classbe/utils/size_config.dart';
import 'package:classbe/widgets/show_more_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FixedResponsiveExplore extends StatefulWidget {
  @override
  _FixedResponsiveExploreState createState() => _FixedResponsiveExploreState();
}

class _FixedResponsiveExploreState extends State<FixedResponsiveExplore> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 22,
              ),
              buildSection(),
              buildSection(),
              buildSection(),
              buildSection(),
              buildSection(),
            ],
          ),
        ),
      ),
    );
  }

  Column buildSection() {
    return Column(
      // too get method for it
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular Class',
              style: ClassSubtitle,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 5),
                      child: Divider(
                        height: 1,
                        color: PrimaryBlue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 3,
                    ),
                    child: ShowMoreButton(
                      text: 'Show more',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          height: 24.63 * SizeConfig.heightMultiplier,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (BuildContext context, index) {
              return buildCard();
            },
          ),
        )
      ],
    );
  }

  Padding buildCard() {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0, top: 10, bottom: 10, left: 10),
      child: Container(
        height: 18.47 * SizeConfig.heightMultiplier,
        width: 71.466 * SizeConfig.widthMultiplier,
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
                height: 18.47 * SizeConfig.heightMultiplier,
                width: 60.8 * SizeConfig.widthMultiplier,
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
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/man.svg',
                                    height: 2.95 * SizeConfig.heightMultiplier,
                                    width: 8 * SizeConfig.widthMultiplier,
                                  ),
                                  Text(
                                    'Johnny Clark',
                                    style: NameTitle,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
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
                                        padding:
                                            const EdgeInsets.only(top: 1.0),
                                        child: SvgPicture.asset(
                                          'assets/images/heart.svg',
                                          height: 1.47 *
                                              SizeConfig.heightMultiplier,
                                          width: 1.47 *
                                              SizeConfig.heightMultiplier,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4.0, right: 2),
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
                                      height:
                                          3.32 * SizeConfig.heightMultiplier,
                                      width: 3.32 * SizeConfig.heightMultiplier,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 3.0, top: 3),
                                                child: SvgPicture.asset(
                                                  'assets/images/chat.svg',
                                                  height: 1.3 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  width: 1.3 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 1),
                                            child: Text(
                                              'Chat',
                                              style: HomeSmallGreenBold,
                                              textAlign: TextAlign.center,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 26.666 * SizeConfig.widthMultiplier),
                                child: Container(
                                  width: 32 * SizeConfig.widthMultiplier,
                                  height: 9.23 * SizeConfig.heightMultiplier,
                                  child: Text(
                                    'Regular Classes and Revision Maths for first class. Regular Classes and Revision Maths',
                                    style: SmallDescText,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 4,
                                  ),
                                ),
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
                          horizontal: 2 * SizeConfig.widthMultiplier,
                        ),
                        width: 60.8 * SizeConfig.widthMultiplier,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/star.svg',
                                  height: 3 * SizeConfig.imageSizeMultiplier,
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
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Live',
                                        style: SmallBoldRedText,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      SvgPicture.asset(
                                        'assets/images/youtube.svg',
                                        height:
                                            1.72 * SizeConfig.heightMultiplier,
                                        width:
                                            4.53 * SizeConfig.widthMultiplier,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '1160\$/Hour',
                                    style: WhiteGreenHeading,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 5 * SizeConfig.heightMultiplier,
              bottom: 0,
              left: 0,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black54.withOpacity(0.5),
                            offset: Offset(0.0, 0.0),
                            blurRadius: 4),
                      ],
                    ),
                    child: SvgPicture.asset(
                      'assets/images/tv.svg',
                      height: 11.94 * SizeConfig.heightMultiplier,
                      width: 28 * SizeConfig.widthMultiplier,
                    ),
                  ),
                  Positioned(
                    left: 4.76 * SizeConfig.widthMultiplier,
                    right: 0,
                    top: 1.85 * SizeConfig.heightMultiplier,
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Revision Class',
                            style: SmallBoldRedText,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Text(
                            'Maths',
                            style: FieldNameText,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
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
