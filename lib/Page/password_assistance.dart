import 'package:demohooper/Components/light_text_sentence.dart';
import 'package:demohooper/style_guide.dart';
import 'package:flutter/material.dart';
import 'package:demohooper/Components/back_ground_image.dart';
import 'package:demohooper/Components/login_header.dart';
import 'package:demohooper/Components/text_input_widget.dart';
import 'package:demohooper/Components/button_small.dart';
import 'package:demohooper/Page/otp_page.dart';

class PasswordAssistance extends StatelessWidget {
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
                text: 'Passwords and Login support',
              ),
              SizedBox(height: 16,),

              LightTextSentence(
                text: 'Enter the Email address associated with your account',
              ),

              TextInput(
                text: 'Email',
                type: 'email',
                hideText: false,
              ),
              SizedBox(height: 40,),

              ButtonSmall(
                text: 'Send OTP',
                function: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => OneTimePasswordPage()));
                },
              )


            ],
          ),
        ),
      ),
    );
  }
}
