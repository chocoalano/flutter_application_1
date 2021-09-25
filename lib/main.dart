import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/auth/LoginPage.dart';
import 'package:flutter_application_1/page/dashboard/HomePage.dart';

import 'LandingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => MyHomePage(
              title: 'Dashboard',
            ),
      },
    );
  }
}
