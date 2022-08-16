import 'package:case_study/library/values.dart';

class Funcs {
  String getCurrentTime() {
    DateTime dTNow = DateTime.now();
    return "${dTNow.hour}:${dTNow.minute}";
  }

  String getDateForAppbar() {
    DateTime dtNow = DateTime.now();
    return "${dtNow.day} ${months[dtNow.month]}, ${days[dtNow.weekday]}";
  }
}
