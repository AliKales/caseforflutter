import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../library/funcs.dart';

class ClockText extends StatefulWidget {
  ///[ClockText] here it expandes in row and after build it gets width to set as height too
  const ClockText({
    Key? key,
  }) : super(key: key);

  @override
  State<ClockText> createState() => _ClockTextState();
}

class _ClockTextState extends State<ClockText> {
  final GlobalKey _key = GlobalKey();

  double? height;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => setHeight());
  }

  void setHeight() {
    setState(() {
      height = _key.currentContext!.size!.width;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        key: _key,
        height: height,
        decoration: BoxDecoration(
          color: context.appTheme.primaryColorDark,
          borderRadius: context.normalBorderRadius,
          border: Funcs().isDark(context)
              ? null
              : Border.all(
                  color: context.appTheme.textTheme.headline2!.color!,
                  width: 2,
                ),
        ),
        margin: context.horizontalPaddingLow,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "13",
            style: context.textTheme.headline2!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
