import 'package:flutter/material.dart';

abstract class IRouteGenerator {
  Route<dynamic>? generateRoute(RouteSettings settings);
}
