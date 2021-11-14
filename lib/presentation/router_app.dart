import 'package:flutter/material.dart';

import 'package:flutter_web_routes_spike/presentation/pages/statefull_counter_page.dart';

import '../routerGenerator.dart';

class RouterApp extends StatelessWidget {
  const RouterApp({
    Key? key,
    required this.router,
  }) : super(key: key);

  final RouteGenerator router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Router Spike',
      initialRoute: StatefullCounterPage.route,
      onGenerateRoute: router.generateRoute,
    );
  }
}
