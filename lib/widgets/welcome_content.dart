import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whats_my_app/site_data.dart';

import '../constants.dart';
import 'next_button.dart';

class WelcomeContent extends StatefulWidget {
  //Handles the event on button press (load results content)
  final Function onButtonPress;

  //Starts the button invisible so that it

  WelcomeContent({@required this.onButtonPress}) {}

  @override
  _WelcomeContentState createState() => _WelcomeContentState();
}

class _WelcomeContentState extends State<WelcomeContent> {
  //The duration of fade-in animations
  final Duration animationDuration = Duration(milliseconds: 200);
  //Starts the button as invisible, so as to allow it to fade-in
  final bool showButtonVisible = false;

  @override
  Widget build(BuildContext context) {
    final Animation animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(Provider.of<SiteData>(context).controller);
    TextStyle welcomeTextStyle = kDisplayTextStyle;
    Provider.of<SiteData>(context).controller.forward();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TypewriterAnimatedTextKit(
          speed: animationDuration,
          totalRepeatCount: 1,
          text: ['What\'s My App?'],
          textStyle: welcomeTextStyle,
        ),
        SizedBox(
          height: 10,
        ),
        FadeTransition(
          opacity: animation,
          child: Text(
            '"Dude, I\'m offering you a chance to get in on the ground floor..."',
            style: welcomeTextStyle.copyWith(
              fontWeight: FontWeight.w100,
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        NextButton(
          label: 'Find Out',
          onPress: widget.onButtonPress,
        ),
      ],
    );
  }
}
