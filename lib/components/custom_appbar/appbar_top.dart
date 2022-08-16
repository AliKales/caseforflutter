import 'package:case_study/library/funcs.dart';
import 'package:case_study/providers/p_theme.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

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
              _buttonThemeChange(context),
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

  Widget _buttonThemeChange(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<PTheme>(context, listen: false).changeTheme(context);
      },
      child: Container(
        decoration: BoxDecoration(
          color: context.appTheme.textTheme.headline2!.color,
          shape: BoxShape.circle,
        ),
        padding: context.paddingLow,
        child: Icon(
            Funcs().isDark(context) ? Icons.light_mode : Icons.dark_mode_sharp,
            color: context.appTheme.primaryColor),
      ),
    );
  }
}
