import 'package:flutter/material.dart';
import 'package:demohooper/Page/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'login_page',
      routes: {
        'login_page': (context) => LoginPage(),
      },
    );
  }
}
