import 'package:demohooper/Components/button_small.dart';
import 'package:demohooper/Components/light_text_sentence.dart';
import 'package:demohooper/Page/login_page.dart';
import 'package:demohooper/style_guide.dart';
import 'package:flutter/material.dart';
import 'package:demohooper/Components/back_ground_image.dart';
import 'package:demohooper/Components/login_header.dart';
import 'package:demohooper/Components/text_input_widget.dart';

class PasswordChanged extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundImage(
        location: "images/Frame2.png",
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 16),
              LoginHeader(
                text: 'Password has been changed',
              ),
              SizedBox(height: 40,),

              ButtonSmall(
                text: 'Back to Login',
                function: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => LoginPage()));
                },
              )


            ],
          ),
        ),
      ),
    );
  }
}
