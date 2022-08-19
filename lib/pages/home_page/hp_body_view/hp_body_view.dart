import 'package:case_study/pages/details_page/details_page_view.dart';
import 'package:case_study/pages/home_page/hp_item/hp_item_view.dart';
import 'package:case_study/providers/p_timezones.dart';
import 'package:case_study/services/http/service_http.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

part 'mixin.dart';

class HPBodyView extends StatefulWidget {
  const HPBodyView({Key? key}) : super(key: key);

  @override
  State<HPBodyView> createState() => _HPBodyViewState();
}

class _HPBodyViewState extends State<HPBodyView> with _Mixin {
  List<String> timezones = [];

  final textNoData = "İtem bulunamadı";

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => _loadTimezones());
  }

  void _loadTimezones() async {
    loadTimezones();
  }

  @override
  Widget build(BuildContext context) {
    timezones = Provider.of<PTimezones>(context).getTimezones;
    return Expanded(
      child: Padding(
        padding: context.paddingMedium,
        child: timezones.isNullOrEmpty ? _widgetNoData(context) : _listView(),
      ),
    );
  }

  Center _widgetNoData(BuildContext context) {
    return Center(
      child: Text(textNoData, style: context.textTheme.subtitle2),
    );
  }

  NotificationListener<OverscrollIndicatorNotification> _listView() {
    return NotificationListener<OverscrollIndicatorNotification>(
      //Here we disabla Scroll glow
      onNotification: (OverscrollIndicatorNotification overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: ListView.builder(
        itemCount: timezones.length,
        itemBuilder: (context, index) => HPItemView(
          text: timezones[index],
          onTap: () => _handleOnTap(timezones[index]),
        ),
      ),
    );
  }

  void _handleOnTap(String timezone) {
    //here we dissmis the keyboard to avoid renderflex error just in case
    FocusManager.instance.primaryFocus?.unfocus();

    context.navigateToPage(
      DetailsPageView(data: timezone),
    );
  }
}
