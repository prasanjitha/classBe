import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/google_sign_in.dart';
import '../src/pages/index.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            RaisedButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => IndexPage()));
            })
          ],
        ),
      ),
    );
  }
}
