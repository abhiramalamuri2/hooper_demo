import 'package:demohooper/Components/back_ground_image.dart';
import 'package:demohooper/Components/login_header.dart';
import 'package:demohooper/Components/text_input_widget.dart';
import 'package:demohooper/Components/button_small.dart';
import 'package:demohooper/Components/google_sign_in.dart';
import 'package:demohooper/Components/divider_line_with_text.dart';
import 'package:demohooper/Components/semi_text_action.dart';
import 'package:demohooper/Page/login_page.dart';
import 'package:flutter/material.dart';



class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundImage(
        location: "images/Frame2.png",
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 16,),
                LoginHeader(
                  text: 'Create Your Account',
                ),
                SizedBox(height: 16,),
                TextInput(
                  text: 'Email',
                  type: 'email',
                  hideText: false,
                ),
                SizedBox(height: 40,),
                TextInput(
                  text: 'Password',
                  type: 'password',
                  hideText: true,
                ),
              SizedBox(height: 40,),
              TextInput(
                text: 'Confirm Password',
                type: 'password',
                hideText: true,
              ),
                SizedBox(height: 24),
                ButtonSmall(
                  text: 'Sign up',
                  function: (){},
                ),
                DividerWithCentreText(
                  text: 'or',
                ),
                GoogleSignInButton(
                  text: 'Sign up with Google',
                ),
                SizedBox(height: 40),
                SemiActionText(
                  normalText: 'Already have an account? ',
                  actionText: 'Sign in here.',
                  function: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => LoginPage()));
                    print('new page');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
