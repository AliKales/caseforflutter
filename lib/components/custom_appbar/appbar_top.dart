import 'package:case_study/library/funcs.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../dynamic_spacer.dart';

class AppBarTop extends StatelessWidget {
  const AppBarTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 29),
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.vertical(bottom: context.highRadius),
        ),
        padding: context.paddingMedium,
        child: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _textName(context),
                  const DynamicSpacer(height: 0.01),
                  _textClock(context),
                  const DynamicSpacer(height: 0.01),
                  _textDate(context),
                  const DynamicSpacer(height: 0.05),
                ],
              ),
              _buttonThemeChange(),
            ],
          ),
        ),
      ),
    );
  }

  Text _textDate(BuildContext context) {
    return Text(Funcs().getDateForAppbar(),
        style: Theme.of(context)
            .textTheme
            .subtitle2!
            .copyWith(fontWeight: FontWeight.bold));
  }

  Text _textClock(BuildContext context) {
    return Text(
      Funcs().getCurrentTime(),
      style: Theme.of(context)
          .textTheme
          .headline5!
          .copyWith(fontWeight: FontWeight.bold),
    );
  }

  Text _textName(BuildContext context) {
    return Text("Günaydın Özgür",
        style: Theme.of(context)
            .textTheme
            .subtitle2!
            .copyWith(fontWeight: FontWeight.bold));
  }

  IconButton _buttonThemeChange() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.abc),
    );
  }
}
