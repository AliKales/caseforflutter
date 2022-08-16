import 'package:flutter/material.dart';

class PTheme with ChangeNotifier {
  ThemeData themeData;

  PTheme(this.themeData);

  setTheme(ThemeData tD) async {
    themeData = tD;
    notifyListeners();
  }
}
