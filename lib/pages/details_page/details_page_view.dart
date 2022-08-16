import 'package:case_study/components/dynamic_spacer.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'clock_text.dart';

class DetailsPageView extends StatelessWidget {
  const DetailsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Padding(
        padding: context.paddingMedium,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const ClockText(),
                Text(
                  ":",
                  style: context.textTheme.headline2!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const ClockText(),
              ],
            ),
            const DynamicSpacer(height: 0.05),
            _textBold(context, "Abidjan"),
            const DynamicSpacer(height: 0.01),
            _textNormal(context, "Africa"),
            const DynamicSpacer(height: 0.03),
            _textNormal(context, "Carşamba, GMT +01:00"),
            const DynamicSpacer(height: 0.01),
            _textNormal(context, "Haziran 8, 2022"),
          ],
        ),
      ),
    );
  }

  Text _textNormal(BuildContext context, String text) {
    return Text(
      text,
      style:
          context.textTheme.headline6!.copyWith(fontWeight: FontWeight.normal),
    );
  }

  Text _textBold(BuildContext context, String text) {
    return Text(
      text,
      style: context.textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: context.highRadius,
        ),
      ),
      leadingWidth: context.dynamicWidth(0.2),
      toolbarHeight: kToolbarHeight + context.dynamicHeight(0.04),
      title: Text(
        "WORLD TIME",
        style:
            context.textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
