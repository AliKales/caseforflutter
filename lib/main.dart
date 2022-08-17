import 'package:case_study/providers/p_theme.dart';
import 'package:case_study/providers/p_timezones.dart';
import 'package:case_study/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'pages/home_page/home_page_view.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<PTheme>(
          create: (context) => PTheme(Themes().getDeviceTD()),
        ),
        ChangeNotifierProvider<PTimezones>(
          create: (context) => PTimezones(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'World Clock-Case',
      theme: Provider.of<PTheme>(context).themeData,
      home: const HomePageView(),
    );
  }
}
