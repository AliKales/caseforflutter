import 'package:case_study/providers/p_timezones.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

import '../../library/values.dart';

class AppbarTextfield extends StatefulWidget {
  const AppbarTextfield({Key? key}) : super(key: key);

  @override
  State<AppbarTextfield> createState() => _AppbarTextfieldState();
}

class _AppbarTextfieldState extends State<AppbarTextfield> {
  final _hintText = "Arama";
  double height = 0.07;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingMedium,
      child: SizedBox(
        height: context.dynamicHeight(height),
        child: TextField(
          onChanged: _onChanged,
          style: const TextStyle(color: cTextFieldTextColor),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: context.highBorderRadius,
            ),
            hintText: _hintText,
            contentPadding: EdgeInsets.zero,
            hintStyle: const TextStyle(color: Colors.black),
            filled: true,
            fillColor: cTextFieldFillColor,
            enabledBorder: _outlineInputBorder(context),
            focusedBorder: _outlineInputBorder(context),
            prefixIcon: const Icon(Icons.search, color: Colors.black),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder _outlineInputBorder(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: context.highBorderRadius,
      borderSide: const BorderSide(color: cTextFieldBorderColor),
    );
  }

  void _onChanged(String text) {
    if (text.trim() == "") return;
    
    Provider.of<PTimezones>(context, listen: false).setFilterText(text.trim());
  }
}
