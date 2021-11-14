import 'package:flutter/material.dart';
import 'package:flutter_web_routes_spike/presentation/pages/counter_page.dart';
import 'package:flutter_web_routes_spike/presentation/pages/other_counter_page.dart';

class RouterApp extends StatelessWidget {
  const RouterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Router Spike',
      initialRoute: CounterPage.route,
      routes: {
        CounterPage.route: (_) => const CounterPage(),
        OtherCounterPage.route: (_) => const OtherCounterPage()
      },
    );
  }
}
