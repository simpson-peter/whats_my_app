import 'package:flutter/material.dart';
import 'package:whats_my_app/result_page.dart';
import 'package:whats_my_app/welcome_page.dart';

/*
* TODO 's
* - Implement "share on twitter" feature
* - Implement catchy lead phrase generator ("see _blank_ at TechCrunch!")
 */

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
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var tween = Tween(begin: begin, end: end);
      var offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
