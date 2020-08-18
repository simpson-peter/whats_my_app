import 'package:flutter/material.dart';
import 'package:whats_my_app/constants.dart';
import 'package:whats_my_app/widgets/share_on_twitter.dart';

class ShareDialog extends StatelessWidget {
  final Function onTweet;

  ShareDialog({@required this.onTweet});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Just what the world needed. One more trendy app idea.',
            style: kSubtitleTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          ShareOnTwitter(onTweet: onTweet),
        ],
      ),
    );
  }
}
