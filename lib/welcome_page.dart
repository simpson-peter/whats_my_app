import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topCenter,
          stops: [0.05, 0.2, 1],
          colors: [
            Color(0xFFfcddc0),
            Color(0xFFFFDAB9),
            Color(0xFFffc087),
          ],
        ),
      ),
      child: Center(
        child: Text(
          'What\'s My App Bro?',
        ),
      ),
    );
  }
}
