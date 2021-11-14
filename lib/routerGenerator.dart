import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_routes_spike/presentation/pages/counter_page.dart';

import 'presentation/pages/not_found_page.dart';
import 'presentation/pages/other_counter_page.dart';

class RouteGenerator {
  static final Map<String, Widget Function()> _routesMap = {
    CounterPage.route: () => const CounterPage(),
    OtherCounterPage.route: () => const OtherCounterPage(),
  };

  Route<dynamic>? generateRoute(RouteSettings settings) {
    final searchPage =
        _routesMap[settings.name]?.call() ?? const NotFoundPage();

    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => searchPage,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        if (kIsWeb) {
          return _buildWebTransition(animation, searchPage);
        }

        return _buildMobileTransition(
            animation, secondaryAnimation, searchPage);
      },
    );
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
}
