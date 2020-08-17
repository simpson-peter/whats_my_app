import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whats_my_app/result_page.dart';
import 'package:whats_my_app/site_data.dart';
import 'package:whats_my_app/widgets/welcome_content.dart';

class MainPage extends StatefulWidget {
  static String id = '/welcome';
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  //Tracks whether to display welcome (true) or results (false) content

  void initState() {
    super.initState();
  }

  //Gets the page content to load based on whether the user is at the page entry
  Widget getContent(BuildContext context) {
    if (Provider.of<SiteData>(context, listen: false).getInIntro()) {
      return WelcomeContent(
        onButtonPress: () {
          setState(() {
            Provider.of<SiteData>(context, listen: false).setInIntro(false);
          });
        },
      );
    } else {
      return ResultPage(
        onButtonPress: () {
          setState(() {
            getContent(context);
          });
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<SiteData>(context).controller = AnimationController(
      duration: Duration(milliseconds: 3000),
      vsync: this,
      lowerBound: 0.0,
      upperBound: 1.0,
    );
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            stops: [0.05, 0.1, 0.5, 1],
            colors: [
              Color(0xFFfcddc0),
              Color(0xFFFFDAB9),
              Color(0xFFffba7a),
              Color(0xFFffc087),
            ],
          ),
        ),
        child: getContent(context),
      ),
    );
  }
}
