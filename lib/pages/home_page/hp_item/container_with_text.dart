import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ContainerWithText extends StatelessWidget {
  const ContainerWithText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    var textPadding = const EdgeInsets.symmetric(horizontal: 20, vertical: 18);
    var containerMargin = const EdgeInsets.only(right: 13);

    return Container(
      width: double.maxFinite,
      margin: containerMargin,
      decoration: BoxDecoration(
        color: context.appTheme.primaryColor,
        borderRadius: context.lowBorderRadius,
      ),
      child: Padding(
        padding: textPadding,
        child: Text(
          getTextEdited(),
          style: Theme.of(context).textTheme.subtitle1,
          softWrap: false,
          maxLines: 1,
          overflow: TextOverflow.fade,
        ),
      ),
    );
  }

  String getTextEdited() {
    return text.replaceAll("/", ", ");
  }
}
