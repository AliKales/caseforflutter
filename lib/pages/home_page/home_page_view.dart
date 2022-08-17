import 'package:case_study/components/custom_appbar/custom_appbar.dart';
import 'package:case_study/pages/home_page/hp_body_view/hp_body_view.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomAppBar(),
          HPBodyView(),
        ],
      ),
    );
  }
}
