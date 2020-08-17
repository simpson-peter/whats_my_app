import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:whats_my_app/constants.dart';
import 'package:whats_my_app/widgets/next_button.dart';

class ResultPage extends StatefulWidget {
  static String id = "/result";
  final Function onButtonPress;
  ResultPage({@required this.onButtonPress});
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  final Random rand = Random(DateTime.now().millisecondsSinceEpoch);
  //Selects a random element of list with uniform likelihood
  dynamic getElementFromList(List list) {
    if (list == null || list.length == 0) {
      return "";
    } else {
      return list[rand.nextInt(list.length)];
    }
  }

  //Returns the full app name to display
  String getAppName() {
    return getElementFromList(kFirstPhraseList) +
        getElementFromList(kSecondPhraseList);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Your App Is Named...',
          style: kDisplayTextStyle,
        ),
        Text(
          getAppName(),
          style: kDisplayTextStyle,
        ),
        NextButton(
          label: 'Give Me Another!',
          onPress: widget.onButtonPress,
        ),
      ],
    );
  }
}
