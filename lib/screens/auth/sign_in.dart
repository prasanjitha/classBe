import 'package:classbe/loader.dart';
import 'package:classbe/main.dart';
import 'package:classbe/screens/auth/Country.dart';
import 'package:classbe/screens/auth/sign_up.dart';
import 'package:classbe/screens/splash/third_intro.dart';
import 'package:classbe/screens/tabs.dart';
import 'package:classbe/styles/styles.dart';
import 'package:classbe/utils/size_config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'register.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:provider/provider.dart';
import '../../provider/google_sign_in.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  static final FacebookLogin facebookSignIn = new FacebookLogin();

  String _message = 'Log in/out by pressing the buttons below.';

  String role = 'Teacher';

  final _formKey = GlobalKey<FormState>();
  bool hidden = true;

  TextEditingController _username = TextEditingController();
  TextEditingController _pass = TextEditingController();

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
                                              fontSize: 6 *
                                                  SizeConfig.textMultiplier),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1.99 * SizeConfig.heightMultiplier,
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
                                    // height: 5.44 * SizeConfig.heightMultiplier,
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
                                    height: 1.99 * SizeConfig.heightMultiplier,
                                  ),
                                  Form(
                                    child: Column(
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
                                            controller: _username,
                                            autofillHints: [
                                              AutofillHints.name,
                                            ],
                                            decoration: InputDecoration(
                                              prefixIcon: Icon(Icons.email),
                                              hintText: 'Email or Username',
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
                                        ),
                                        SizedBox(
                                          height: 1.99 *
                                              SizeConfig.heightMultiplier,
                                        ),
                                        Container(
                                          height: 7.18 *
                                              SizeConfig.heightMultiplier,
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
                                            obscureText: hidden,
                                            obscuringCharacter: '*',
                                            controller: _pass,
                                            decoration: InputDecoration(
                                              prefixIcon: Icon(Icons.lock),
                                              hintText: 'Password',
                                              hintStyle: TextStyle(
                                                  fontFamily: 'VisbyCF',
                                                  color: Colors.black
                                                      .withOpacity(0.45),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 2.1 *
                                                      SizeConfig
                                                          .textMultiplier),
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
                                              if (value.length < 8) {
                                                return 'Password length must be atleast 8 characters long';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.99 * SizeConfig.heightMultiplier,
                                  ),
                                  Container(
                                    height: 5.91 * SizeConfig.heightMultiplier,
                                    width: MediaQuery.of(context).size.width,
                                    child: RaisedButton(
                                      color: Colors.white,
                                      elevation: 0,
                                      textColor: Colors.white,
                                      onPressed: () {
                                        // print(_username.text);
                                        // print(_pass.text);
                                        signIn();
                                      },
                                      child: Text('Sign In',
                                          style: AuthWhiteText.copyWith(
                                              color: PrimaryBlue)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3.99 * SizeConfig.heightMultiplier,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text('Don\'t have an Account?',
                                            style: SmallAuthText),
                                        Text('Sign up for FREE!',
                                            style: SmallBoldSecondBlueHeading)
                                      ],
                                    ),
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
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SignUp()));
                                      },
                                      child: Text(
                                        'Sign Up',
                                        style: AuthWhiteText,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.99 * SizeConfig.heightMultiplier,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text('-OR-', style: SmallAuthText),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.99 * SizeConfig.heightMultiplier,
                                  ),
                                  Container(
                                    height: 5.91 * SizeConfig.heightMultiplier,
                                    width: MediaQuery.of(context).size.width,
                                    child: RaisedButton(
                                      color: Colors.white,
                                      elevation: 0,
                                      onPressed: () {
                                        _login();
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/images/facebook.svg'),
                                          Text(
                                            'Sign In with facebook',
                                            style: SignInWithText,
                                          ),
                                          Container()
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.99 * SizeConfig.heightMultiplier,
                                  ),
                                  Container(
                                    height: 5.91 * SizeConfig.heightMultiplier,
                                    width: MediaQuery.of(context).size.width,
                                    child: RaisedButton(
                                      color: Colors.white,
                                      elevation: 0,
                                      onPressed: () {
                                        final provider =
                                            Provider.of<GoogleSignInProvider>(
                                                context,
                                                listen: false);
                                        provider.login();
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/images/google.svg'),
                                          Text(
                                            'Sign In with google',
                                            style: SignInWithText,
                                          ),
                                          Container()
                                        ],
                                      ),
                                    ),
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

  Future<void> signIn() async {
    // Loader.showLoadingScreen(context, _keyLoader);
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: _username.text, password: _pass.text);

      final User user = userCredential.user;
      if (user != null) {
        //   setState(() {
        // print('okay');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TabScreen()));
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUp()));
      }
      // }
    } on FirebaseAuthException catch (e) {
      Loader.stopLoadingScreen(context);
      if (e.code == 'user-not-found') {
        // print('No user found for that email. Please Sign Up');
        // _showSnackBar('No user found for that email. Please Sign Up');
      } else if (e.code == 'wrong-password') {
        // print('Wrong password provided for that user.');
        // _showSnackBar('Wrong password provided for that user.');
      }
    }
  }

  Future<Null> _login() async {
    final FacebookLoginResult result = await facebookSignIn.logIn(['email']);

    try {
      final AccessToken accessToken = await FacebookAuth.instance.login();

      // Create a credential from the access token
      final FacebookAuthCredential credential = FacebookAuthProvider.credential(
        accessToken.token,
      );
      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } on FacebookAuthException catch (e) {
      // handle the FacebookAuthException
    } on FirebaseAuthException catch (e) {
      // handle the FirebaseAuthException
    } finally {}

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final FacebookAccessToken accessToken = result.accessToken;
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TabScreen()));
        print(
            '''
         Logged in!
         
         Token: ${accessToken.token}
         User id: ${accessToken.userId}
         Expires: ${accessToken.expires}
         Permissions: ${accessToken.permissions}
         Declined permissions: ${accessToken.declinedPermissions}
         ''');
        break;
      case FacebookLoginStatus.cancelledByUser:
        print('Login cancelled by the user.');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignIn()));
        break;
      case FacebookLoginStatus.error:
        print('Something went wrong with the login process.\n'
            'Here\'s the error Facebook gave us: ${result.errorMessage}');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignIn()));
        break;
    }
  }

  Future<Null> _logOut() async {
    await facebookSignIn.logOut();
    print('Logged out.');
  }

  void _showMessage(String message) {
    setState(() {
      _message = message;
    });
  }
}
