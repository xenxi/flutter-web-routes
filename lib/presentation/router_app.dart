import 'package:flutter/material.dart';
import 'package:flutter_web_routes_spike/presentation/core/injections/injections.dart';
import 'package:flutter_web_routes_spike/presentation/core/routes/custom_navigator.dart';
import 'package:flutter_web_routes_spike/presentation/layouts/main_page_layout.dart';

import 'package:flutter_web_routes_spike/presentation/views/statefull_counter_view.dart';

import 'core/routes/i_route_generator.dart';

class RouterApp extends StatelessWidget {
  const RouterApp({
    Key? key,
    required IRouteGenerator router,
  })  : _router = router,
        super(key: key);

  final IRouteGenerator _router;

  @override
  Widget build(BuildContext context) {
    final navigator = getIt<CustomNavigator>();

    return MaterialApp(
      title: 'Router Spike',
      initialRoute: StatefullCounterView.route,
      onGenerateRoute: _router.generateRoute,
      navigatorKey: navigator.key,
      builder: (context, child) => MainPageLayout(
        child: child ?? Container(),
        navigator: navigator,
      ),
    );
  }
}
