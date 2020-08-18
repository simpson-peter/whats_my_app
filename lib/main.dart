import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whats_my_app/result_page.dart';
import 'package:whats_my_app/main_page.dart';
import 'package:whats_my_app/site_data.dart';

/*
* TODO 's
* TODO Implement "share on twitter" feature
* TODO Add a little 'made-by' corner
* TODO Clean up animations after use
* TODO fix non-instant font change on first result
* TODO Fix always-orange background on fist result
* TODO Fix button alignment in Firefox
 */

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SiteData(),
      child: MaterialApp(
        home: MainPage(),
      ),
    );
  }
}

Route createRoute(String routeName) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => MainPage(),
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
