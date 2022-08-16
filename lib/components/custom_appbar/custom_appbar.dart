import 'package:case_study/components/custom_appbar/appbar_textfield.dart';
import 'package:case_study/components/custom_appbar/appbar_top.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: const [
          AppBarTop(),
          AppbarTextfield(),
        ],
      ),
    );
  }
}
