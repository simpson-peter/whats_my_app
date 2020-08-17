import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'next_button.dart';

class WelcomeContent extends StatelessWidget {
  final Function onButtonPress;

  WelcomeContent({@required this.onButtonPress});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        NextButton(
          label: 'Find Out',
          onPress: onButtonPress,
        ),
      ],
    );
  }
}
