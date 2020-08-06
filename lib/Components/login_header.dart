import 'package:flutter/material.dart';
import 'package:demohooper/style_guide.dart';

class LoginHeader extends StatelessWidget {
  LoginHeader({this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: dark_grey,
        fontFamily: PrimaryFont,
        fontFamilyFallback: SecondaryFont,
        fontWeight: FontWeight.bold,
        fontSize: fontSize_24,
      ),
    );
  }
}
