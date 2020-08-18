import 'package:flutter/material.dart';
import 'package:whats_my_app/constants.dart';
import 'package:universal_html/html.dart' as html;

//Displays author and info information at the bottom site
class Footer extends StatelessWidget {
  void goToLink(String url) {
    html.window.open(url, '_blank');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            child: Text(
              'Made by Peter Simpson',
              style: kDisplayTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
            onTap: () {
              goToLink("https://petersimpson.me");
            },
          ),
        ],
      ),
    );
  }
}
