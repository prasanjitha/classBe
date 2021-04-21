import 'package:classbe/screens/explore/explore.dart';
import 'package:classbe/screens/explore/fixed_explore.dart';
import 'package:classbe/screens/explore/fixed_responsive_explore.dart';
import 'package:classbe/screens/search/search_result.dart';
import 'package:classbe/screens/teacher/my_office.dart';
import 'package:classbe/screens/test.dart';
import 'package:classbe/styles/styles.dart';
import 'package:classbe/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedTab = 0;
  List<Widget> tabs = [
    Explore(),
    Test(),
    MyOffice(),
    FixedResponsiveExplore(),
    FixedExplore(),
  ];
  TextEditingController _headline = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            // print(SizeConfig.imageSizeMultiplier);
            return Scaffold(
              resizeToAvoidBottomInset: false,
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'ClassBe',
                                  style: BigBoldBlueHeading,
                                ),
                                Text(
                                  'Online Live Classes',
                                  style: SubHead,
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              'assets/images/menu.svg',
                              height: 2.58 * SizeConfig.heightMultiplier,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                right: 1 * SizeConfig.widthMultiplier,
                                top: 5,
                                bottom: 15),
                            child: Container(
                              height: 4.92 * SizeConfig.textMultiplier,
                              width: 70.33 * SizeConfig.widthMultiplier,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  30,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black54.withOpacity(0.2),
                                    offset: Offset(0.0, 0.9),
                                    blurRadius: 10,
                                  )
                                ],
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 14.0),
                                      child: TextFormField(
                                        // onChanged: (value) {
                                        //   setState(() {
                                        //     _head = _headline.text;
                                        //   });
                                        // },
                                        controller: _headline,
                                        autofillHints: [
                                          AutofillHints.name,
                                        ],
                                        decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 2,
                                                    horizontal: 10),
                                            hintText:
                                                'What you want to learn ?',
                                            hintStyle: SearchBarStyle),
                                        validator: (value) {
                                          if (value == '') {
                                            return 'Champ requis';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right:
                                            1.2 * SizeConfig.widthMultiplier),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SearchResult()));
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        child: SvgPicture.asset(
                                            'assets/images/search.svg',
                                            height: 2.22 *
                                                SizeConfig.heightMultiplier),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              bottom: 15,
                              right: 3,
                            ),
                            child: Container(
                              height: 4.92 * SizeConfig.heightMultiplier,
                              width: 18.66 * SizeConfig.widthMultiplier,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  30,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black54.withOpacity(0.2),
                                    offset: Offset(0.0, 0.9),
                                    blurRadius: 10,
                                  )
                                ],
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'FILTER',
                                      style: BlueCaps,
                                    ),
                                    SvgPicture.asset('assets/images/filter.svg',
                                        height:
                                            2.22 * SizeConfig.heightMultiplier),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            tabs[_selectedTab],
                            Positioned(
                              bottom: 10,
                              left: 0,
                              right: 0,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  height: 52,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      30,
                                    ),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black54.withOpacity(0.5),
                                        offset: Offset(0.0, 2),
                                        blurRadius: 10,
                                      )
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            _selectedTab = 0;
                                          });
                                        },
                                        child: SvgPicture.asset(
                                          'assets/images/home.svg',
                                          color: _selectedTab == 0
                                              ? PrimaryBlue
                                              : Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            _selectedTab = 1;
                                          });
                                        },
                                        child: SvgPicture.asset(
                                          'assets/images/message.svg',
                                          color: _selectedTab == 1
                                              ? PrimaryBlue
                                              : Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            _selectedTab = 2;
                                          });
                                        },
                                        child: SvgPicture.asset(
                                          'assets/images/person.svg',
                                          color: _selectedTab == 2
                                              ? PrimaryBlue
                                              : Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            _selectedTab = 3;
                                          });
                                        },
                                        child: SvgPicture.asset(
                                          'assets/images/notification.svg',
                                          color: _selectedTab == 3
                                              ? PrimaryBlue
                                              : Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            _selectedTab = 4;
                                          });
                                        },
                                        child: SvgPicture.asset(
                                          'assets/images/setting.svg',
                                          color: _selectedTab == 4
                                              ? PrimaryBlue
                                              : Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
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
