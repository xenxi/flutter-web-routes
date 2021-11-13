import 'package:flutter/material.dart';

import 'presentation/pages/counter_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Router Spike',
      initialRoute: CounterPage.route,
      routes: {CounterPage.route: (_) => const CounterPage()},
    );
  }
}
