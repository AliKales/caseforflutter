import 'package:case_study/components/dynamic_spacer.dart';
import 'package:case_study/library/simple_uis.dart';
import 'package:case_study/library/values.dart';
import 'package:case_study/models/model_timezone.dart';
import 'package:case_study/services/http/service_http.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'clock_text.dart';

part 'mixin.dart';

class DetailsPageView extends StatefulWidget {
  const DetailsPageView({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  State<DetailsPageView> createState() => _DetailsPageViewState();
}

class _DetailsPageViewState extends State<DetailsPageView> with _Mixin {
  ModelTimezone? timezone;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => _loadTimezone());
  }

  void _loadTimezone() async {
    SimpleUIs().showProgressIndicator(context);
    timezone = await getTimezone(widget.data);
    Navigator.pop(context);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    DateTime? dateTime = DateTime.tryParse(timezone?.utcDatetime ?? "");

    return Scaffold(
      appBar: _appBar(context),
      body: Padding(
        padding: context.paddingMedium,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                ClockText(value: dateTime?.hour ?? 0),
                _textBetwenClockTexts(),
                ClockText(value: dateTime?.minute ?? 0),
              ],
            ),
            const DynamicSpacer(height: 0.05),
            _textBold(context, timezoneRegionAndName(widget.data, false)),
            const DynamicSpacer(height: 0.01),
            _textNormal(context, timezoneRegionAndName(widget.data, true)),
            const DynamicSpacer(height: 0.03),
            _textNormal(context, getDayAbbreviation(timezone)),
            const DynamicSpacer(height: 0.01),
            _textNormal(context, getDate(dateTime)),
          ],
        ),
      ),
    );
  }

  Text _textBetwenClockTexts() {
    return Text(
      ":",
      style: context.textTheme.headline2!.copyWith(fontWeight: FontWeight.bold),
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
