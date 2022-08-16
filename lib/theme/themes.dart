import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Themes {
  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: const Color(0xFF02327D),
    cardColor: const Color(0xFF02327D),
    scaffoldBackgroundColor: const Color(0xFF002359),
    iconTheme: const IconThemeData(
      color: Color(0xFFFFFFFF),
    ),
  );

  final lightTheme = ThemeData.light().copyWith(
    primaryColor: const Color(0xFFE3EEFF),
    cardColor: const Color(0xFFE3EEFF),
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    iconTheme: const IconThemeData(
      color: Color(0xFF002359),
    ),
  );

  ///Here we get device's theme data
  ThemeData getDeviceTD() {
    var deviceBrightness = SchedulerBinding.instance.window.platformBrightness;
    bool isDarkMode = deviceBrightness == Brightness.dark;

    return isDarkMode ? darkTheme : lightTheme;
  }
}
