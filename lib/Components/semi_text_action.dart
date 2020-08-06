import 'package:flutter/material.dart';
import 'package:demohooper/style_guide.dart';

class SemiActionText extends StatelessWidget {
  SemiActionText({this.normalText, this.actionText, this.function});
  final String normalText;
  final String actionText;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          normalText,
          style: TextStyle(
            fontFamily: PrimaryFont,
            fontFamilyFallback: SecondaryFont,
            fontSize: fontSize_14,
            color: normal_grey,
          ),
        ),
        GestureDetector(
          onTap: function,
          child: Text(
            actionText,
            style: TextStyle(
              fontFamily: PrimaryFont,
              fontFamilyFallback: SecondaryFont,
              fontSize: fontSize_14,
              color: light_orange,
            ),
          ),
        )
      ],
    );
  }
}
