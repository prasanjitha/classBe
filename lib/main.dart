import 'package:classbe/chat/chat.dart';
import 'package:classbe/chat/const.dart';
import 'package:classbe/chat/home.dart';
import 'package:classbe/chat/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Demo',
      theme: ThemeData(
        primaryColor: themeColor,
      ),
      home: Chat(),
      debugShowCheckedModeBanner: false,
    );
  }
}
