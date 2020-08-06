import 'package:flutter/material.dart';
import 'package:demohooper/style_guide.dart';

class TextActionVerySmall extends StatelessWidget {
  TextActionVerySmall({this.text, this.function});
  final String text;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.fromLTRB(padding_32, 5, padding_32, 0),
        child: GestureDetector(
          onTap: function,
          child: Text(
            text,
            style: TextStyle(
              color: light_orange,
              fontSize: fontSize_12,
              fontFamily: PrimaryFont,
              fontFamilyFallback: SecondaryFont,
            ),
          ),
        ),
      ),
    );
  }
}
