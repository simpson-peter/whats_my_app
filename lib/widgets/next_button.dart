import 'package:flutter/material.dart';
import 'package:platform_detect/platform_detect.dart';
import 'package:whats_my_app/constants.dart';

class NextButton extends StatelessWidget {
  final String label;
  final Function onPress;
  final double opacity;
  //Tracks whether the button needs to be extra-extended for firefox due to font load flicker
  final bool longText;
  NextButton(
      {@required this.label,
      @required this.onPress,
      this.opacity = 1,
      this.longText = false});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onPressed: onPress,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
        ),
        child: Padding(
          padding: browser.isFirefox
              ? (longText
                  ? EdgeInsets.fromLTRB(8, 8, 22, 8)
                  : EdgeInsets.fromLTRB(8, 8, 15, 8))
              : EdgeInsets.fromLTRB(8, 8, 8, 8),
          child: Text(
            label,
            style: kDisplayTextStyle.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
