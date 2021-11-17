import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'package:flutter_web_routes_spike/presentation/views/provider_counter_view.dart';
import 'package:flutter_web_routes_spike/presentation/views/statefull_counter_view.dart';

import 'i_route_generator.dart';

class FluroRouteGenerator implements IRouteGenerator {
  static final Map<String, Widget Function()> _routesMap = {
    StatefullCounterView.route: () => const StatefullCounterView(),
    ProviderCounterView.route: () => const ProviderCounterView(),
  };

  FluroRouteGenerator() {
    _configureRoutes();
  }

  final FluroRouter _router = FluroRouter();

  void _configureRoutes() {
    _routesMap.forEach((path, buildView) {
      _router.define(path, handler: Handler(
        handlerFunc: (context, parameters) {
          return buildView();
        },
      ));
    });
  }

  @override
  Route<dynamic>? generateRoute(RouteSettings settings) =>
      _router.generator(settings);
}
