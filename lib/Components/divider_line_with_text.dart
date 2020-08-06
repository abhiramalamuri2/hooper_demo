import 'package:flutter/material.dart';
import 'package:demohooper/style_guide.dart';

class DividerWithCentreText extends StatelessWidget {
  DividerWithCentreText({this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(padding_32),
                child: Divider(),
              )
          ),

          Text(
            'or',
            style: TextStyle(
                fontFamily: PrimaryFont,
                fontSize: 15,
                color: Colors.grey[700]
            ),
          ),

          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(padding_32),
                child: Divider(),
              )
          ),
        ]
    );
  }
}
