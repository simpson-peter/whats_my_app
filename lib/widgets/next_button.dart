import 'package:flutter/material.dart';
import 'package:whats_my_app/constants.dart';

class NextButton extends StatelessWidget {
  final String label;
  final Function onPress;
  NextButton({@required this.label, @required this.onPress});

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
          padding: EdgeInsets.all(8),
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
