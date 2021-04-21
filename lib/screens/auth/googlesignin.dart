import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/google_sign_in.dart';

class Gsignin extends StatefulWidget {
  @override
  _GsigninState createState() => _GsigninState();
}

class _GsigninState extends State<Gsignin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.login();
              },
            )
          ],
        ),
      ),
    );
  }
}
