import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Shows the 'Share On Twitter' Button and redirects you to a custom tweet when clicked
class ShareOnTwitter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          width: 2.0,
          color: Color(0xFF00acee),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.twitter,
                color: Color(0xFF00acee),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Share on Twitter',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF00acee),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
