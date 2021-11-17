import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_routes_spike/presentation/views/not_found_view.dart';

import 'package:flutter_web_routes_spike/presentation/views/provider_counter_view.dart';
import 'package:flutter_web_routes_spike/presentation/views/statefull_counter_view.dart';

import 'i_route_generator.dart';

class FluroRouteGenerator implements IRouteGenerator {
  static final Map<String, Widget Function()> _routesMap = {
    '/': () => const StatefullCounterView(),
    StatefullCounterView.route: () => const StatefullCounterView(),
    ProviderCounterView.route: () => const ProviderCounterView(),
  };

  FluroRouteGenerator() {
    _configureRoutes();
  }

  final FluroRouter _router = FluroRouter();

  void _configureRoutes() {
    _defineRoutes();

    _router.notFoundHandler = Handler(
      handlerFunc: (context, parameters) => const NotFoundView(),
    );
  }

  void _defineRoutes() => _routesMap.forEach((path, buildView) {
        _router.define(
          path,
          handler: Handler(
            handlerFunc: (context, parameters) {
              return buildView();
            },
          ),
          transitionType: TransitionType.custom,
          transitionBuilder: _transitionBuilder,
        );
      });

  Widget _transitionBuilder(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (kIsWeb) {
      return _buildWebTransition(animation, child);
    }

    return _buildMobileTransition(animation, secondaryAnimation, child);
  }

  Widget _buildMobileTransition(Animation<double> animation,
          Animation<double> secondaryAnimation, Widget searchPage) =>
      CupertinoPageTransition(
          primaryRouteAnimation: animation,
          secondaryRouteAnimation: secondaryAnimation,
          child: searchPage,
          linearTransition: true);

  Widget _buildWebTransition(Animation<double> animation, Widget searchPage) =>
      FadeTransition(
        opacity: animation,
        child: searchPage,
      );

  @override
  Route<dynamic>? generateRoute(RouteSettings settings) =>
      _router.generator(settings);
}
