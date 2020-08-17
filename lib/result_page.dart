import 'package:flutter/material.dart';
import 'package:whats_my_app/constants.dart';

class ResultPage extends StatefulWidget {
  static String id = "/result";
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String getAppName() {
    return 'This Name';
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
        )
      ],
    );
  }
}
