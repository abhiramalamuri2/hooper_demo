import 'package:flutter/material.dart';
import 'package:demohooper/style_guide.dart';

class GoogleSignInButton extends StatelessWidget {
  GoogleSignInButton({this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('images/google_logo_new_jpg.jpg'),
              height: 25,
              width: 25,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: TextStyle(
                  fontFamily: PrimaryFont,
                  color: Colors.grey[700]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
