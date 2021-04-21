import 'package:classbe/main.dart';
import 'package:classbe/screens/auth/sign_up.dart';
import 'package:classbe/screens/splash/third_intro.dart';
import 'package:classbe/screens/teacher/my_course.dart';
import 'package:classbe/styles/styles.dart';
import 'package:classbe/utils/size_config.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyOffice extends StatefulWidget {
  @override
  _MyOfficeState createState() => _MyOfficeState();
}

class _MyOfficeState extends State<MyOffice> {
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
    'Maths Third Level',
    'Maths Fourht Level',
    'Maths Fifth Level',
    'Maths Sixth Level',
  ];
  int _selectedClasses = 0;

  String classeDropDownValue = 'Maths First Level';

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
                child: SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome to my office',
                              style: WelcomeOffice,
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
                                            height: 4 *
                                                SizeConfig.imageSizeMultiplier,
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
                                  width: 30 * SizeConfig.widthMultiplier,
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
                                        height: 2 * SizeConfig.heightMultiplier,
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
                                  width: 30 * SizeConfig.widthMultiplier,
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
                                        height: 2 * SizeConfig.heightMultiplier,
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
                                  width: 30 * SizeConfig.widthMultiplier,
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
                                        height: 2 * SizeConfig.heightMultiplier,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 0.99 * SizeConfig.heightMultiplier,
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
                                  height: 3.32 * SizeConfig.heightMultiplier,
                                  width: 30 * SizeConfig.widthMultiplier,
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
                            ExpandableText(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque scelerisque efficitur posuere. Curabitur tincidunt placerat diam ac efficitur. Cras rutrum egestas nisl vitae pulvinar. Donec id mollis diam, id hendrerit neque. Donec accumsan efficitur libero, vitae feugiat odio fringilla ac. Aliquam a turpis bibendum, varius erat dictum, feugiat libero. Nam et dignissim nibh. Morbi elementum varius elit, at dignissim ex accumsan a',
                              trimLines: 3,
                            ),
                            SizedBox(
                              height: 1.99 * SizeConfig.heightMultiplier,
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
                                        padding: EdgeInsets.only(
                                            left: 2.0 *
                                                SizeConfig.widthMultiplier),
                                        child: Text(
                                          'Not Connected',
                                          style: DemiBoldblue,
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
                                  width: 41 * SizeConfig.widthMultiplier,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: 2.0 *
                                                SizeConfig.widthMultiplier),
                                        child: Text(
                                          'Request A Custom Class',
                                          style: SmallBoldRequestBlueText,
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 4.92 *
                                                SizeConfig.heightMultiplier,
                                            width: 67.2 *
                                                SizeConfig.widthMultiplier,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                78,
                                              ),
                                              border: Border.all(
                                                  color: PrimaryBlue, width: 3),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromRGBO(0, 0, 0,
                                                      0.3499999940395355),
                                                  offset: Offset(0, 2),
                                                  blurRadius: 6,
                                                )
                                              ],
                                            ),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  right: 5.5 *
                                                      SizeConfig
                                                          .widthMultiplier,
                                                  bottom: 2,
                                                ),
                                                child: Text(
                                                  'ADD NEW CLASS or COURSE',
                                                  style: AddBlueText,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      top: 4,
                                      child: Container(
                                        height:
                                            5.91 * SizeConfig.heightMultiplier,
                                        width:
                                            5.91 * SizeConfig.heightMultiplier,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: PrimaryBlue, width: 4),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: SvgPicture.asset(
                                            'assets/images/add.svg',
                                            width: 2.95 *
                                                SizeConfig.heightMultiplier,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.99 * SizeConfig.heightMultiplier,
                            ),
                            // MY CLASSES SECTION
                            Container(
                              height: 3.69 * SizeConfig.heightMultiplier,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: sections.length,
                                  itemBuilder: (BuildContext context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _selectedSection = index;
                                        });
                                      },
                                      child: Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              // boxShadow: [
                                              //   BoxShadow(
                                              //     color: Color.fromRGBO(0, 0, 0,
                                              //         0.3499999940395355),
                                              //     offset: Offset(0, 2),
                                              //     blurRadius: 6,
                                              //   )
                                              // ],
                                              border: Border(
                                                bottom: BorderSide(
                                                    color: PrimaryBlue,
                                                    width: 1),
                                                left: BorderSide(
                                                    color: _selectedSection ==
                                                                index ||
                                                            (0 < _selectedSection &&
                                                                _selectedSection <
                                                                    sections
                                                                        .length) ||
                                                            _selectedSection ==
                                                                0
                                                        ? Colors.white
                                                        : PrimaryBlue,
                                                    width: _selectedSection ==
                                                            index
                                                        ? 0
                                                        : 1),
                                                right: BorderSide(
                                                    color: _selectedSection ==
                                                                index ||
                                                            (0 < _selectedSection &&
                                                                _selectedSection <
                                                                    sections
                                                                        .length)
                                                        ? Colors.white
                                                        : PrimaryBlue,
                                                    width: _selectedSection ==
                                                            index
                                                        ? 0
                                                        : 1),
                                                top: BorderSide(
                                                    color: Colors.white,
                                                    width: 1),
                                              ),
                                              gradient: LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.topRight,
                                                colors:
                                                    _selectedSection == index
                                                        ? [
                                                            Colors.transparent,
                                                            Colors.transparent
                                                          ]
                                                        : [
                                                            Color(0xffffffff),
                                                            Color(0xffffffff),
                                                          ],
                                                tileMode: TileMode.repeated,
                                              ),
                                            ),
                                            height: 3.69 *
                                                SizeConfig.heightMultiplier,
                                            width: 32.8 *
                                                SizeConfig.widthMultiplier,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.topRight,
                                                colors:
                                                    _selectedSection == index
                                                        ? [
                                                            Color(0xff36A6FE),
                                                            Color(0xff3183FF)
                                                          ]
                                                        : [
                                                            Colors.transparent,
                                                            Colors.transparent,
                                                          ],
                                                tileMode: TileMode.repeated,
                                              ),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                topRight: Radius.circular(5),
                                              ),
                                            ),
                                            height: 3.69 *
                                                SizeConfig.heightMultiplier,
                                            width: 32.8 *
                                                SizeConfig.widthMultiplier,
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                sections[index],
                                                style: _selectedSection == index
                                                    ? HeadSectionStyle
                                                    : HeadSectionStyle.copyWith(
                                                        color:
                                                            Color(0xff6C6C6C),
                                                      ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                            ),

                            // Container(
                            //   height: 3.69 * SizeConfig.heightMultiplier,
                            //   child: ListView.builder(
                            //       scrollDirection: Axis.horizontal,
                            //       itemCount: classes.length,
                            //       itemBuilder: (BuildContext context, index) {
                            //         return GestureDetector(
                            //           onTap: () {
                            //             setState(() {
                            //               _selectedClasses = index;
                            //             });
                            //           },
                            //           child: Container(
                            //             decoration: BoxDecoration(
                            //               color: Colors.white,
                            //               border: Border(
                            //                 right: BorderSide(
                            //                     color: PrimaryBlue, width: 1),
                            //               ),
                            //             ),
                            //             height:
                            //                 3.69 * SizeConfig.heightMultiplier,
                            //             width:
                            //                 32.8 * SizeConfig.widthMultiplier,
                            //             child: Align(
                            //               alignment: Alignment.center,
                            //               child: Text(
                            //                 classes[index],
                            //                 overflow: TextOverflow.ellipsis,
                            //                 style: _selectedClasses == index
                            //                     ? SectionStyle.copyWith(
                            //                         color: PrimaryBlue)
                            //                     : SectionStyle.copyWith(
                            //                         color: Color(0xff6C6C6C),
                            //                       ),
                            //               ),
                            //             ),
                            //           ),
                            //         );
                            //       }),
                            // ),
                            SizedBox(
                              height: 1.99 * SizeConfig.heightMultiplier,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 50.0),
                              child: Container(
                                height: 4.91 * SizeConfig.heightMultiplier,
                                width: MediaQuery.of(context).size.width,
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
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(
                                          0, 0, 0, 0.3499999940395355),
                                      offset: Offset(0, 2),
                                      blurRadius: 6,
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                          dropdownColor: PrimaryBlue,
                                          iconSize: 24,
                                          elevation: 16,
                                          isExpanded: true,
                                          iconEnabledColor: Colors.white,
                                          iconDisabledColor: Colors.white,
                                          style: DropDownStyle,
                                          hint: Text('Classes'),
                                          onChanged: (value) {
                                            setState(() {
                                              classeDropDownValue = value;
                                              // print(value);
                                            });
                                          },
                                          value: classeDropDownValue,
                                          items: classes
                                              .map((e) => DropdownMenuItem(
                                                    child: Text('${e}'),
                                                    value: e,
                                                  ))
                                              .toList()

                                          // [
                                          // DropdownMenuItem(
                                          //   child: Text('Feminin'),
                                          //   value: 'Female',
                                          // ),
                                          // DropdownMenuItem(
                                          //   child: Text('Masculin'),
                                          //   value: 'Male',
                                          // ),
                                          // ],
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 1.99 * SizeConfig.heightMultiplier,
                            ),
                            // CLASSES AREA
                            Column(
                              children: classes
                                  .map((e) => Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 8.0,
                                            left: 4,
                                            right: 4,
                                            top: 8),
                                        child: Container(
                                          height:
                                              8 * SizeConfig.heightMultiplier,
                                          child: Stack(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MyCourse()));
                                                },
                                                child: Container(
                                                  height: 4.91 *
                                                      SizeConfig
                                                          .heightMultiplier,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      5,
                                                    ),
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
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                        'Maths First Level 1st Semester Complete Course.',
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: ClassTextStyle),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 0.6 *
                                                    SizeConfig.heightMultiplier,
                                                right: 10,
                                                child: Container(
                                                  width: 13.06 *
                                                      SizeConfig
                                                          .widthMultiplier,
                                                  padding: EdgeInsets.all(1 *
                                                      SizeConfig
                                                          .widthMultiplier),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      5,
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          color: Color.fromRGBO(
                                                              0,
                                                              0,
                                                              0,
                                                              0.3499999940395355),
                                                          offset: Offset(0, 2),
                                                          blurRadius: 6)
                                                    ],
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.edit,
                                                        color: PrimaryBlue,
                                                        size: 1.35 *
                                                            SizeConfig
                                                                .heightMultiplier,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 2.0),
                                                        child: Text(
                                                          'Edit',
                                                          style: SectionStyle
                                                              .copyWith(
                                                            color: PrimaryBlue,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ))
                                  .toList(),
                            )
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
      text: _readMore ? "...Read more" : " Read less",
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
                    children: [
                      Text(
                        '- About Me -',
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
                    children: [
                      Text(
                        '- About Me -',
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
