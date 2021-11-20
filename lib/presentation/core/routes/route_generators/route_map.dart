import 'package:flutter/material.dart';
import 'package:flutter_web_routes_spike/presentation/views/greet_view.dart';
import 'package:flutter_web_routes_spike/presentation/views/provider_counter_view.dart';
import 'package:flutter_web_routes_spike/presentation/views/statefull_counter_view.dart';

import '../query_params.dart';

class RouteMap {
  static final Map<String, Widget Function(QueryParams parameters)> map = {
    '/': (_) => const StatefullCounterView(),
    StatefullCounterView.route: (param) => const StatefullCounterView(),
    '${StatefullCounterView.route}/:numOfClicks': (param) =>
        StatefullCounterView(
          initialNumOfClicks: param.getInt('numOfClicks'),
        ),
    ProviderCounterView.route: (param) =>
        ProviderCounterView(initialNumOfClicks: param.getInt('numOfClicks')),
    '${GreetView.route}/:name': (param) => GreetView(
          name: param.getString('name')!,
          message: param.getString('message'),
        ),
  };
}
