import 'package:flutter/material.dart';
import 'package:whats_my_app/result_page.dart';
import 'package:whats_my_app/widgets/welcome_content.dart';

class WelcomePage extends StatefulWidget {
  static String id = '/welcome';

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool _inIntro = true;
  Color useThis = Color(0xFFffba7a);

  //Gets the page content to load based on whether the user is at the page entry
  Widget getContent() {
    if (_inIntro) {
      return WelcomeContent(
        onButtonPress: () {
          setState(() {
            setState(() {
              _inIntro = false;
            });
          });
        },
      );
    } else {
      return ResultPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.05, 0.1, 0.6, 1],
            colors: [
              Color(0xFFfcddc0),
              Color(0xFFFFDAB9),
              useThis,
              //Color(0xFFffba7a),
              Color(0xFFffc087),
            ],
          ),
        ),
        child: getContent(),
      ),
    );
  }
}
