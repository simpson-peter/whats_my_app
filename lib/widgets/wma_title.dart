import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:whats_my_app/constants.dart';

//Displays the animated 'What's My App?' Title
class WMATitle extends StatelessWidget {
  //The duration of fade-in animations
  final Duration animationDuration = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return TypewriterAnimatedTextKit(
      speed: animationDuration,
      totalRepeatCount: 1,
      text: ['What\'s My App?'],
      textStyle: kDisplayTextStyle,
    );
  }
}
