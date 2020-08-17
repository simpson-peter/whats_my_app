import 'package:flutter/cupertino.dart';

//Data-Only Class For Cross-App Data. Shared by Provider.
class SiteData extends ChangeNotifier {
  //Controller responsible for manipulating _animatorValue
  AnimationController controller;

  //Holds the upcoming animation
  Animation<Offset> offsetAnimation;

  //bool tracking if the intro page should be loaded
  bool _inIntro = true;

  //Getters and Setters for bool tracking if the intro page should be loaded
  bool getInIntro() {
    return _inIntro;
  }

  void setInIntro(bool inIntro) {
    _inIntro = inIntro;
  }
}
