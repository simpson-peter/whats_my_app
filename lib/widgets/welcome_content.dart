import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whats_my_app/site_data.dart';

import '../constants.dart';
import 'next_button.dart';

class WelcomeContent extends StatefulWidget {
  //Handles the event on button press (load results content)
  final Function onButtonPress;

  //Starts the button invisible so that it

  WelcomeContent({@required this.onButtonPress});

  @override
  _WelcomeContentState createState() => _WelcomeContentState();
}

class _WelcomeContentState extends State<WelcomeContent> {
  //Starts the button as invisible, so as to allow it to fade-in
  final bool showButtonVisible = false;

  //Tracks the pixel distance of the 'What's My App?' title from the top of the browser
  final double titleOffset = 275;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //Initialize important animation info for subtitle fade-in
    final Animation animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(Provider.of<SiteData>(context).controller);
    Provider.of<SiteData>(context).controller.forward();

    //Return the build widget representing the welcome message and action button which loads results
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              FadeTransition(
                opacity: animation,
                child: Text(
                  '"Dude, I\'m offering you a chance to get in on the ground floor..."',
                  style: kSubtitleTextStyle,
                  textAlign: TextAlign.center,
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
          ),
        ],
      ),
    );
  }
}
