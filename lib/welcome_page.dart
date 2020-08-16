import 'package:flutter/material.dart';
import 'package:whats_my_app/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:whats_my_app/widgets/next_button.dart';

class WelcomePage extends StatelessWidget {
  static String id = '/welcome';

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
              Color(0xFFffba7a),
              Color(0xFFffc087),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TypewriterAnimatedTextKit(
              speed: Duration(milliseconds: 200),
              totalRepeatCount: 1,
              text: ['What\'s My App, Bro?'],
              textStyle: kDisplayTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            NextButton(label: 'Find Out'),
          ],
        ),
      ),
    );
  }
}
