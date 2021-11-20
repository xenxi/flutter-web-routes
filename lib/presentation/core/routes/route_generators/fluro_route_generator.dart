import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_routes_spike/presentation/views/not_found_view.dart';

import '../query_params.dart';
import 'i_route_generator.dart';
import 'route_map.dart';

class FluroRouteGenerator implements IRouteGenerator {
  FluroRouteGenerator() {
    _configureRoutes();
  }

  final FluroRouter _router = FluroRouter();

  void _configureRoutes() {
    _defineRoutes();

    _defineNotFoundRoute();
  }

  void _defineNotFoundRoute() => _router.notFoundHandler = Handler(
        handlerFunc: (context, parameters) => const NotFoundView(),
      );

  void _defineRoutes() => RouteMap.map.forEach((path, buildView) {
        _router.define(
          path,
          handler: Handler(
            handlerFunc: (context, parameters) {
              return buildView(QueryParams(parameters));
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
