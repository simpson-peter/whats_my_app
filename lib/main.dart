import 'package:flutter/material.dart';
import 'package:whats_my_app/result_page.dart';
import 'package:whats_my_app/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
    );
  }
}

Route createRoute(String routeName) {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => ResultPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      });
}
