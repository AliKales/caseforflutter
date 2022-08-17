import 'package:case_study/library/values.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class Funcs {
  ///[getCurrentTime]; 09:05
  String getCurrentTime() {
    DateTime dTNow = DateTime.now();
    return "${dTNow.hour}:${dTNow.minute}";
  }

  ///[getDateForAppbar]; 16 Eylül, Çarşamba
  String getDateForAppbar() {
    DateTime dtNow = DateTime.now();
    return "${dtNow.day} ${months[dtNow.month]}, ${days[dtNow.weekday]}";
  }

  bool isDark(BuildContext context) {
    return context.appTheme.brightness == Brightness.dark;
  }

  String textForFiltering(String text) {
    return text
        .toLowerCase()
        .trim()
        .replaceAll(",", "")
        .replaceAll("/", "")
        .replaceAll(" ", "");
  }
}
