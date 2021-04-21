import 'package:classbe/styles/styles.dart';
import 'package:classbe/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowMoreButton extends StatelessWidget {
  final Function function;
  final String text;

  const ShowMoreButton({Key key, this.function, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: EdgeInsets.all(
          2,
        ),
        height: 3.07 * SizeConfig.heightMultiplier,
        width: 17.8 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black54.withOpacity(0.2),
              offset: Offset(0.0, 0.9),
              blurRadius: 6,
            )
          ],
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Show More',
            style: BlueSubtitle,
          ),
        ),
      ),
    );
  }
}
