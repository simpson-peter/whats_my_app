import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  static String id = "/result";
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          'Hello',
        ),
      ),
    );
  }
}
