import 'package:flutter/material.dart';
import 'package:flutter_web_routes_spike/presentation/pages/counter_page.dart';

import 'presentation/pages/other_counter_page.dart';

class RouteGenerator {
  static final Map<String, Widget Function()> _routesMap = {
    CounterPage.route: () => const CounterPage(),
    OtherCounterPage.route: () => const OtherCounterPage(),
  };

  Route<dynamic>? generateRoute(RouteSettings settings) {
    final page = _routesMap[settings.name]?.call();

    return MaterialPageRoute(builder: (context) => page ?? const CounterPage());
  }
}
