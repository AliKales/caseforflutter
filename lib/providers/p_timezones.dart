import 'package:case_study/library/funcs.dart';
import 'package:flutter/material.dart';

class PTimezones with ChangeNotifier {
  List<String> timezones = [];
  String filterText = "";

  void setTimezones(List<String> tZ) {
    timezones = tZ;
    notifyListeners();
  }

  void setFilterText(String text) {
    filterText = text.trim();
    notifyListeners();
  }

  List<String> get getTimezones {
    if (filterText == "") {
      return timezones;
    }

    String resultFilter = Funcs().textForFiltering(filterText);

    return timezones
        .where(
          (element) => Funcs().textForFiltering(element).contains(resultFilter),
        )
        .toList();
  }
}
