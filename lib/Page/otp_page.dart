import 'package:demohooper/Components/button_small.dart';
import 'package:demohooper/Components/light_text_sentence.dart';
import 'package:demohooper/Page/reset_password.dart';
import 'package:demohooper/style_guide.dart';
import 'package:flutter/material.dart';
import 'package:demohooper/Components/back_ground_image.dart';
import 'package:demohooper/Components/login_header.dart';
import 'package:demohooper/Components/text_input_widget.dart';

class OneTimePasswordPage extends StatelessWidget {
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
                text: 'One Time Password',
              ),
              SizedBox(height: 16,),

              LightTextSentence(
                text: 'An OTP (One Time Password) has been sent to your Email address',
              ),

              TextInput(
                text: 'Enter OTP',
                type: 'number',
                hideText: true,
              ),
              SizedBox(height: 40,),
              ButtonSmall(
                text: 'Continue',
                function: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => ResetPasswordPage()));
                },
              )


            ],
          ),
        ),
      ),
    );
  }
}
