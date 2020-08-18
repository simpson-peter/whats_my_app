import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:platform_detect/platform_detect.dart';

//Shows the 'Share On Twitter' Button and redirects you to a custom tweet when clicked
class ShareOnTwitter extends StatelessWidget {
  final Function onTweet;

  ShareOnTwitter({@required this.onTweet});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onPressed: onTweet,
      child: Container(
        width: browser.isFirefox ? 185 : 173,
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
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Color(0xFF00acee),
                ),
                SizedBox(
                  width: 7,
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
              height: 9,
            ),
          ],
        ),
      ),
    );
  }
}
