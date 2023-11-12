import 'package:flutter/cupertino.dart';
import 'color.dart';

class ColorNotifier with ChangeNotifier {
  bool isDark = false;

  set setIsDark(v) {
    isDark = v;
    notifyListeners();
  }

  get getIsDark => isDark;

  get getwihitecolor => isDark ? darkwihitecolor : wihitecolor;

  get getprimeryColor => isDark ? darkPrimeryColor : primeryColor;

  get getblue => isDark ? darkblue : blue;

  get getred => isDark ? darkred : red;

  get getbackgroudcolor => isDark ? backgrounddark : background;

  get getblack => isDark ? darkblack : black;
  get getcardcolor => isDark ? darkcardcolor : cardcolor;

  get getvisacolor => isDark ? darkvisacolor : visacolor;
}
