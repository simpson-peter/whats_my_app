import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_my_app/constants.dart';
import 'package:whats_my_app/widgets/next_button.dart';

class ResultPage extends StatefulWidget {
  //List of fonts to pull result name font from
  static List<TextStyle> resultFonts = [
    GoogleFonts.lobster(textStyle: kResultNameTextStyle),
    GoogleFonts.righteous(textStyle: kResultNameTextStyle),
    GoogleFonts.fredokaOne(textStyle: kResultNameTextStyle),
    GoogleFonts.patuaOne(textStyle: kResultNameTextStyle),
    GoogleFonts.baloo(textStyle: kResultNameTextStyle),
    GoogleFonts.londrinaOutline(textStyle: kResultNameTextStyle),
  ];

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

  //Returns a text style from the result font list, tagging it with the substyle
  TextStyle getTextStyle() {
    return getElementFromList(ResultPage.resultFonts);
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
          '"' + getElementFromList(kIntroPhrases) + '"',
          style: kDisplayTextStyle.copyWith(
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
            fontSize: 25,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 100,
          child: Text(
            getAppName(),
            style: getTextStyle(),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        NextButton(
          label: 'Give Me Another!',
          onPress: widget.onButtonPress,
        ),
      ],
    );
  }
}
