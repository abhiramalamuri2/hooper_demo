import 'package:flutter/material.dart';
import 'package:demohooper/style_guide.dart';

class TextInput extends StatelessWidget {
  TextInput({this.text, this.type, this.hideText});
  final String text;
  final String type;
  final bool hideText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(padding_40, 0, padding_40, 0),
      child: TextField(
        obscureText: hideText,
        keyboardType:
            (type == 'email') ? TextInputType.emailAddress : (type == 'number') ? TextInputType.number : TextInputType.text,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            color: normal_grey,
            fontFamily: PrimaryFont,
            fontFamilyFallback: SecondaryFont,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[300]
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: light_orange,
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: light_orange,
            ),
          ),
        ),
      ),
    );
  }
}
