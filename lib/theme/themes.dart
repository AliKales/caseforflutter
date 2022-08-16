import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Themes {
  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: const Color(0xFF02327D),
    cardColor: const Color(0xFF02327D),
    primaryColorDark: const Color(0xFF02327D),
    appBarTheme: const AppBarTheme(
      color: Color(0xFF02327D),
      elevation: 0,
      iconTheme: IconThemeData(
        color: Color(0xFFE3EEFF),
      ),
    ),
    scaffoldBackgroundColor: const Color(0xFF002359),
    iconTheme: const IconThemeData(
      color: Color(0xFFFFFFFF),
    ),
    textTheme: const TextTheme(
      headline2: TextStyle(
        color: Color(0xFFFFFFFF),
      ),
    ),
  );

  final lightTheme = ThemeData.light().copyWith(
    primaryColor: const Color(0xFFE3EEFF),
    cardColor: const Color(0xFFE3EEFF),
    primaryColorDark: const Color(0xFFFFFFFF),
    appBarTheme: const AppBarTheme(
      color: Color(0xFFE3EEFF),
      elevation: 0,
      iconTheme: IconThemeData(
        color: Color(0xFF02327D),
      ),
    ),
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    iconTheme: const IconThemeData(
      color: Color(0xFF002359),
    ),
    textTheme: const TextTheme(
      subtitle2: TextStyle(
        color: Color(0xFF002359),
      ),
      headline5: TextStyle(
        color: Color(0xFF002359),
      ),
      headline6: TextStyle(
        color: Color(0xFF002359),
      ),
      headline2: TextStyle(
        color: Color(0xFF002359),
      ),
      subtitle1: TextStyle(
        color: Color(0xFF002359),
      ),
    ),
  );

  ///Here we get device's theme data
  ThemeData getDeviceTD() {
    var deviceBrightness = SchedulerBinding.instance.window.platformBrightness;
    bool isDarkMode = deviceBrightness == Brightness.dark;

    return isDarkMode ? darkTheme : lightTheme;
  }
}
