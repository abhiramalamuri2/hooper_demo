import 'package:flutter/material.dart';
import 'package:demohooper/Components/text_input_widget.dart';
import 'package:demohooper/Components/text_action_very_small.dart';
import 'package:demohooper/Components/button_small.dart';
import 'package:demohooper/Components/semi_text_action.dart';
import 'package:demohooper/Components/login_header.dart';
import 'package:demohooper/Components/back_ground_image.dart';
import 'package:demohooper/Components/divider_line_with_text.dart';
import 'package:demohooper/Components/google_sign_in.dart';
import 'package:demohooper/Page/sign_up_page.dart';
import 'package:demohooper/Page/password_assistance.dart';

class LoginPage extends StatelessWidget {
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
                text: 'Welcome',
              ),
              SizedBox(height: 8),
              TextInput(
                text: 'Email',
                hideText: false,
                type: 'email',
              ),
              SizedBox(height: 40),
              TextInput(
                text: 'Password',
                hideText: true,
                type: 'password',
              ),
              TextActionVerySmall(
                text: 'Forgot Password?',
                function: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => PasswordAssistance()));
                },
              ),
              SizedBox(height: 24),
              ButtonSmall(
                text: 'Sign in',
                function: (){},
              ),
              DividerWithCentreText(
                text: 'or',
              ),
              GoogleSignInButton(
                text: 'Sign in with Google',
              ),
              SizedBox(height: 40),
              SemiActionText(
                normalText: 'Don\'t have an account? ',
                actionText: 'Sign up here.',
                function: () {
                  Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SignUpPage()));
                  print('new page');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
