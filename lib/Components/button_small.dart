import 'package:flutter/material.dart';
import 'package:demohooper/style_guide.dart';

class ButtonSmall extends StatelessWidget {
  ButtonSmall({this.text, this.function});
  final String text;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: function,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: BorderSide(
          color: light_orange,
          width: 1.5,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize_18,
          color: Colors.grey[700],
          fontFamily: PrimaryFont,
          fontFamilyFallback: SecondaryFont,
        ),
      ),
      color: light_orange,
    );
  }
}
