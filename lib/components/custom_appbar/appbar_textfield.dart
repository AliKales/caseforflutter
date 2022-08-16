import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../library/values.dart';

class AppbarTextfield extends StatefulWidget {
  const AppbarTextfield({Key? key}) : super(key: key);

  @override
  State<AppbarTextfield> createState() => _AppbarTextfieldState();
}

class _AppbarTextfieldState extends State<AppbarTextfield> {
  final _hintText = "Arama";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingMedium,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: context.highBorderRadius,
          ),
          hintText: _hintText,
          filled: true,
          fillColor: cTextFieldFillColor,
          enabledBorder: _outlineInputBorder(context),
          focusedBorder: _outlineInputBorder(context),
          prefixIcon: const Icon(Icons.search, color: Colors.black),
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
}
