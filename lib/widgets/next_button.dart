import 'package:flutter/material.dart';
import 'package:whats_my_app/constants.dart';
import 'package:whats_my_app/main.dart';
import 'package:whats_my_app/result_page.dart';

class NextButton extends StatelessWidget {
  final String label;
  NextButton({@required this.label});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onPressed: () {
        Navigator.of(context).push(createRoute(ResultPage.id));
      },
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
