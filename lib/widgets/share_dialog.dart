import 'package:flutter/material.dart';
import 'package:whats_my_app/constants.dart';
import 'package:whats_my_app/widgets/share_on_twitter.dart';

class ShareDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Just what the world needed. One more trendy app idea.',
            style: kSubtitleTextStyle,
          ),
          SizedBox(
            height: 10,
          ),
          ShareOnTwitter(),
        ],
      ),
    );
  }
}
