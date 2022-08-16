import 'package:case_study/library/funcs.dart';
import 'package:case_study/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PTheme with ChangeNotifier {
  ThemeData themeData;

  PTheme(this.themeData);

  setTheme(ThemeData tD) {
    themeData = tD;
    notifyListeners();
  }

  changeTheme(BuildContext context) {
    bool isDark = Funcs().isDark(context);
    themeData = isDark ? Themes().lightTheme : Themes().darkTheme;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // status bar color
        statusBarIconBrightness: isDark ? Brightness.dark : Brightness.light,
      ),
    );
    notifyListeners();
  }
}
