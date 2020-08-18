import 'package:flutter/material.dart';
import 'package:whats_my_app/constants.dart';

import '../util.dart';

//Displays author and info information at the bottom site
class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MaterialButton(
            padding: EdgeInsets.all(0),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            child: Text(
              'Made by Peter Simpson',
              style: kDisplayTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
            onPressed: () {
              Util.goToLink("https://petersimpson.me");
            },
          ),
        ],
      ),
    );
  }
}
