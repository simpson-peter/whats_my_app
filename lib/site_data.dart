import 'package:flutter/cupertino.dart';

//Data-Only Class For Cross-App Data. Shared by Provider.
class SiteData extends ChangeNotifier {
  //Controller responsible for manipulating _animatorValue
  AnimationController controller;

  //Holds the upcoming animation
  Animation<Offset> offsetAnimation;

  //Tracks the background base color from which the gradient values are derived
  Color _backgroundColor = Color(0xFFffba7a);

  //bool tracking if the intro page should be loaded
  bool _inIntro = true;

  //Getters and Setters for bool tracking if the intro page should be loaded
  bool getInIntro() {
    return _inIntro;
  }

  void setInIntro(bool inIntro) {
    _inIntro = inIntro;
  }

  Color getBackgroundColor() {
    //Return orange as a default background color
    if (_backgroundColor == null) {
      return Color(0xFFffba7a);
    }
    return _backgroundColor;
  }

  void setBackgroundColor(Color backgroundColor) {
    _backgroundColor = backgroundColor;
    notifyListeners();
  }
}
