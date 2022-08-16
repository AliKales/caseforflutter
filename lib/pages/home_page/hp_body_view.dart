import 'package:case_study/pages/details_page/details_page_view.dart';
import 'package:case_study/pages/home_page/hp_item/hp_item_view.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class HPBodyView extends StatelessWidget {
  const HPBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: context.paddingMedium,
        child: NotificationListener<OverscrollIndicatorNotification>(
          //Here we disabla Scroll glow
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowIndicator();
            return true;
          },
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) => HPItemView(
              onTap: () => _handleOnTap(context),
            ),
          ),
        ),
      ),
    );
  }

  void _handleOnTap(BuildContext context) {
    context.navigateToPage(const DetailsPageView());
  }
}
