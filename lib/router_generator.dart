import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_routes_spike/presentation/pages/statefull_counter_page.dart';
import 'presentation/pages/provider_counter_page.dart';
import 'presentation/views/not_found_view.dart';
import 'presentation/views/provider_counter_view.dart';
import 'presentation/views/statefull_counter_view.dart';

class RouteGenerator {
  static final Map<String, Widget Function()> _routesMap = {
    StatefullCounterPage.route: () => const StatefullCounterView(),
    ProviderCounterPage.route: () => const ProviderCounterView(),
  };

  Route<dynamic>? generateRoute(RouteSettings settings) {
    final searchPage =
        _routesMap[settings.name]?.call() ?? const NotFoundView();

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
