import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:universal_html/html.dart' as html;

//Utility class of useful static methods relevant across various classes
class Util {
  static Random rand = Random(DateTime.now().millisecondsSinceEpoch);

  //Selects a random element of list with uniform likelihood
  static dynamic getElementFromList(List list) {
    if (list == null || list.length == 0) {
      return "";
    } else {
      return list[rand.nextInt(list.length)];
    }
  }

  //Opens the link pointed to by url in a new browser
  static void goToLink(String url) {
    debugPrint(url);
    html.window.open(url, '_blank');
  }

  //Replaces any non-URL safe characters with URL-safe chars for TwitterURL insertion
  static String convertToURLForm(String toConvert) {
    toConvert = toConvert.replaceAll(' ', '%20');
    toConvert = toConvert.replaceAll('\'', '%27');
    toConvert = toConvert.replaceAll('...', '');
    toConvert = toConvert.replaceAll(',', '%2C');
    toConvert = toConvert.replaceAll(':', '');
    return toConvert;
  }
}
