import 'dart:math';

import 'package:classbe/screens/auth/sign_in.dart';
import 'package:classbe/screens/splash/third_intro.dart';
import 'package:classbe/styles/styles.dart';
import 'package:classbe/utils/size_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localization/localization.dart';
import 'package:country_pickers/country_pickers.dart';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  String role = 'Teacher';
  String role1 = 'MALE';
  String country = '';
  String dialcode = '';
  DateTime selectedDate = DateTime.now();
  bool obs = true;

  final FirebaseAuth auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  bool hidden = true;

  TextEditingController _secondname = TextEditingController();
  TextEditingController _firstname = TextEditingController();
  TextEditingController _pass = TextEditingController();
  TextEditingController _dob = TextEditingController();
  TextEditingController _phone = TextEditingController();

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
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () => Navigator.pop(context),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/images/rotate-hat.svg',
                                          height: 14 *
                                              SizeConfig.imageSizeMultiplier,
                                          width: 14 *
                                              SizeConfig.imageSizeMultiplier,
                                        ),
                                        Text(
                                          'ClassBe',
                                          style: BigBolgClassBe.copyWith(
                                              fontSize: 5.5 *
                                                  SizeConfig.textMultiplier),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 0.99 * SizeConfig.heightMultiplier,
                              ),
                              SizedBox(
                                height: 0.99 * SizeConfig.heightMultiplier,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'I AM A:',
                                    style: TextStyle(
                                        color: PrimaryBlue,
                                        fontSize:
                                            2.24 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  SizedBox(
                                    height: 0.5 * SizeConfig.heightMultiplier,
                                  ),
                                  Container(
                                    height: 4.92 * SizeConfig.heightMultiplier,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                role = 'Teacher';
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0,
                                                          0,
                                                          0,
                                                          0.15000000596046448),
                                                      offset: Offset(0, 3),
                                                      blurRadius: 12)
                                                ],
                                                gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.topRight,
                                                  colors: role == 'Teacher'
                                                      ? [
                                                          Color(0xff36A6FE),
                                                          Color(0xff3183FF)
                                                        ]
                                                      : [
                                                          Color(0xffffffff),
                                                          Color(0xffffffff),
                                                        ],
                                                  tileMode: TileMode.repeated,
                                                ),
                                              ),
                                              child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    'TEACHER',
                                                    style: AuthRole.copyWith(
                                                      color: role != 'Teacher'
                                                          ? PrimaryGrey
                                                          : Colors.white,
                                                    ),
                                                  )),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                role = 'Student';
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0,
                                                          0,
                                                          0,
                                                          0.15000000596046448),
                                                      offset: Offset(0, 3),
                                                      blurRadius: 12)
                                                ],
                                                gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.topRight,
                                                  colors: role == 'Student'
                                                      ? [
                                                          Color(0xff36A6FE),
                                                          Color(0xff3183FF)
                                                        ]
                                                      : [
                                                          Color(0xffffffff),
                                                          Color(0xffffffff),
                                                        ],
                                                  tileMode: TileMode.repeated,
                                                ),
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'STUDENT',
                                                  style: AuthRole.copyWith(
                                                    color: role != 'Student'
                                                        ? PrimaryGrey
                                                        : Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.99 * SizeConfig.heightMultiplier,
                                  ),
                                  Text(
                                    'GENDER:',
                                    style: TextStyle(
                                        color: PrimaryBlue,
                                        fontSize:
                                            2.24 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Container(
                                    height: 4.92 * SizeConfig.heightMultiplier,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                role1 = 'MALE';
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0,
                                                          0,
                                                          0,
                                                          0.15000000596046448),
                                                      offset: Offset(0, 3),
                                                      blurRadius: 12)
                                                ],
                                                gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.topRight,
                                                  colors: role1 == 'MALE'
                                                      ? [
                                                          Color(0xff36A6FE),
                                                          Color(0xff3183FF)
                                                        ]
                                                      : [
                                                          Color(0xffffffff),
                                                          Color(0xffffffff),
                                                        ],
                                                  tileMode: TileMode.repeated,
                                                ),
                                              ),
                                              child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    'MALE',
                                                    style: AuthRole.copyWith(
                                                      color: role1 != 'MALE'
                                                          ? PrimaryGrey
                                                          : Colors.white,
                                                    ),
                                                  )),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                role1 = 'FEMALE';
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0,
                                                          0,
                                                          0,
                                                          0.15000000596046448),
                                                      offset: Offset(0, 3),
                                                      blurRadius: 12)
                                                ],
                                                gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.topRight,
                                                  colors: role1 == 'FEMALE'
                                                      ? [
                                                          Color(0xff36A6FE),
                                                          Color(0xff3183FF)
                                                        ]
                                                      : [
                                                          Color(0xffffffff),
                                                          Color(0xffffffff),
                                                        ],
                                                  tileMode: TileMode.repeated,
                                                ),
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'FEMALE',
                                                  style: AuthRole.copyWith(
                                                    color: role1 != 'FEMALE'
                                                        ? PrimaryGrey
                                                        : Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.99 * SizeConfig.heightMultiplier,
                                  ),
                                  SizedBox(
                                    height: 0.99 * SizeConfig.heightMultiplier,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'DATE OF BIRTH:',
                                            style: TextStyle(
                                                color: PrimaryBlue,
                                                fontSize: 2.24 *
                                                    SizeConfig.textMultiplier,
                                                fontWeight: FontWeight.w900),
                                          ),
                                          Text(
                                            "${selectedDate.toLocal()}"
                                                .split(' ')[0],
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 2.24 *
                                                    SizeConfig.textMultiplier,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 175,
                                        height:
                                            5.91 * SizeConfig.heightMultiplier,
                                        child: RaisedButton(
                                          elevation: 0,
                                          textColor: Colors.white,
                                          onPressed: () => _selectDate(
                                              context), // Refer step 3
                                          child: Text(
                                            'Select date',
                                            style: AuthWhiteText,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 0.99 * SizeConfig.heightMultiplier,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'COUNTRY:',
                                        style: TextStyle(
                                            color: PrimaryBlue,
                                            fontSize: 2.24 *
                                                SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      SizedBox(
                                        width: 185,
                                        height: 60,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CountryCodePicker(
                                            onChanged: (e) => {
                                              country = e.name,
                                              dialcode = e.dialCode
                                            },
                                            initialSelection: 'TF',
                                            showCountryOnly: true,
                                            showOnlyCountryWhenClosed: true,
                                            favorite: ['+39', 'FR'],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 0.99 * SizeConfig.heightMultiplier,
                                  ),
                                  SizedBox(
                                    height: 0.99 * SizeConfig.heightMultiplier,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height:
                                            7.2 * SizeConfig.heightMultiplier,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color.fromRGBO(0, 0, 0,
                                                    0.15000000596046448),
                                                offset: Offset(0, 3),
                                                blurRadius: 12)
                                          ],
                                        ),
                                        child: TextFormField(
                                          controller: _firstname,
                                          autofillHints: [
                                            AutofillHints.name,
                                          ],
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(Icons.person),
                                            hintText: 'First Name',
                                            hintStyle: TextStyle(
                                                fontFamily: 'VisbyCF',
                                                color: Colors.black
                                                    .withOpacity(0.45),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 2.1 *
                                                    SizeConfig.textMultiplier),
                                          ),
                                          validator: (value) {
                                            if (value == '') {
                                              return 'This field is required';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            0.99 * SizeConfig.heightMultiplier,
                                      ),
                                      Container(
                                        height:
                                            7.2 * SizeConfig.heightMultiplier,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color.fromRGBO(0, 0, 0,
                                                    0.15000000596046448),
                                                offset: Offset(0, 3),
                                                blurRadius: 12)
                                          ],
                                        ),
                                        child: TextFormField(
                                          controller: _secondname,
                                          autofillHints: [
                                            AutofillHints.name,
                                          ],
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(Icons.person),
                                            hintText: 'Last Name',
                                            hintStyle: TextStyle(
                                                fontFamily: 'VisbyCF',
                                                color: Colors.black
                                                    .withOpacity(0.45),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 2.1 *
                                                    SizeConfig.textMultiplier),
                                          ),
                                          validator: (value) {
                                            if (value == '') {
                                              return 'This field is required';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            0.99 * SizeConfig.heightMultiplier,
                                      ),
                                      Container(
                                        height:
                                            7.2 * SizeConfig.heightMultiplier,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color.fromRGBO(0, 0, 0,
                                                    0.15000000596046448),
                                                offset: Offset(0, 3),
                                                blurRadius: 12)
                                          ],
                                        ),
                                        child: TextFormField(
                                          controller: _phone,
                                          autofillHints: [
                                            AutofillHints.name,
                                          ],
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(Icons.phone),
                                            hintText: 'Phone Number',
                                            hintStyle: TextStyle(
                                                fontFamily: 'VisbyCF',
                                                color: Colors.black
                                                    .withOpacity(0.45),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 2.1 *
                                                    SizeConfig.textMultiplier),
                                          ),
                                          validator: (value) {
                                            if (value == '') {
                                              return 'This field is required';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            0.99 * SizeConfig.heightMultiplier,
                                      ),
                                      Container(
                                        height:
                                            7.2 * SizeConfig.heightMultiplier,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color.fromRGBO(0, 0, 0,
                                                    0.15000000596046448),
                                                offset: Offset(0, 3),
                                                blurRadius: 12)
                                          ],
                                        ),
                                        child: TextFormField(
                                          obscureText: obs,
                                          controller: _pass,
                                          autofillHints: [
                                            AutofillHints.name,
                                          ],
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(Icons.lock),
                                            hintText: 'Password',
                                            hintStyle: TextStyle(
                                                fontFamily: 'VisbyCF',
                                                color: Colors.black
                                                    .withOpacity(0.45),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 2.1 *
                                                    SizeConfig.textMultiplier),
                                            suffixIcon: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  hidden = !hidden;
                                                });
                                              },
                                              icon: Icon(
                                                hidden
                                                    ? Icons.visibility_off
                                                    : Icons.visibility,
                                              ),
                                            ),
                                          ),
                                          validator: (value) {
                                            if (value == '') {
                                              return 'This field is required';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            0.99 * SizeConfig.heightMultiplier,
                                      ),
                                      /*  Container(
                                        height:
                                            7.2 * SizeConfig.heightMultiplier,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color.fromRGBO(0, 0, 0,
                                                    0.15000000596046448),
                                                offset: Offset(0, 3),
                                                blurRadius: 12)
                                          ],
                                        ),
                                        child: TextFormField(
                                          controller: _dob,
                                          autofillHints: [
                                            AutofillHints.name,
                                          ],
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(Icons.date_range),
                                            hintText: 'Date of birth',
                                            hintStyle: TextStyle(
                                                fontFamily: 'VisbyCF',
                                                color: Colors.black
                                                    .withOpacity(0.45),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 2.1 *
                                                    SizeConfig.textMultiplier),
                                          ),
                                          validator: (value) {
                                            if (value == '') {
                                              return 'This field is required';
                                            }
                                            return null;
                                          },
                                        ),
                                      ), */
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1.99 * SizeConfig.heightMultiplier,
                                  ),
                                  Container(
                                    height: 5.91 * SizeConfig.heightMultiplier,
                                    width: MediaQuery.of(context).size.width,
                                    child: RaisedButton(
                                      elevation: 0,
                                      textColor: Colors.white,
                                      onPressed: () {
                                        inputData();

                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SignIn()));
                                      },
                                      child: Text(
                                        'Submit',
                                        style: AuthWhiteText,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.99 * SizeConfig.heightMultiplier,
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  SizedBox(
                                    height: 0.99 * SizeConfig.heightMultiplier,
                                  ),
                                  SizedBox(
                                    height: 0.99 * SizeConfig.heightMultiplier,
                                  ),
                                ],
                              )
                            ],
                          ),
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

  void inputData() async {
    final User user = auth.currentUser;
    //final uid = user.uid;
    final uemail = user.email;

    if (user != null) {
      await FirebaseFirestore.instance
          .collection('Users')
          .add({
            'email': uemail,
            'DOB': selectedDate.toString(),
            'password': _pass.text,
            'firstName': _firstname.text,
            'secondName': _secondname.text,
            'job': role,
            'gender': role1,
            'country': country,
            'dialcode': dialcode,
            'phoneNumber': _phone.text
          })
          .then((value) => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignIn()))
              })
          .catchError((error) => print("Failed to add user."));
    }
  }

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(1960),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
}
