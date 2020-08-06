import 'package:flutter/material.dart';
import 'package:demohooper/style_guide.dart';

class LightTextSentence extends StatelessWidget {
  LightTextSentence({this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(padding_40),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.grey[600],
            fontFamily: PrimaryFont
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
