import 'package:case_study/library/values.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class Funcs {
  ///[getCurrentTime]; 09:05
  String getCurrentTime() {
    DateTime dTNow = DateTime.now();

    String hour = Funcs().getTextForTime(dTNow.hour);
    String minute = Funcs().getTextForTime(dTNow.minute);

    return "${hour}:${minute}";
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

  ///[getTextForTime]; 9 => 09
  String getTextForTime(int value) {
    String text = value.toString();
    if (text.length == 1) {
      return "0$text";
    }

    return text;
  }
}
