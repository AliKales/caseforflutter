import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconSize = 18;
    double parentContainerPadding = 3;
    double childContainerPadding = 5;

    return Container(
      decoration: BoxDecoration(
        color: context.appTheme.scaffoldBackgroundColor,
        shape: BoxShape.circle,
      ),
      padding: EdgeInsets.all(parentContainerPadding),
      child: Container(
        decoration: BoxDecoration(
          color: context.appTheme.primaryColor,
          shape: BoxShape.circle,
        ),
        padding: EdgeInsets.all(childContainerPadding),
        child: Icon(Icons.arrow_forward_ios, size: iconSize),
      ),
    );
  }
}
