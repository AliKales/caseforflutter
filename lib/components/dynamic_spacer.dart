import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class DynamicSpacer extends StatelessWidget {
  ///This widgets makes space according to height and width
  const DynamicSpacer({Key? key, this.height, this.width}) : super(key: key);

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(height ?? 0),
      width: context.dynamicWidth(width ?? 0),
    );
  }
}
