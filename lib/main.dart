import 'package:flutter/material.dart';
import 'package:flutter_web_routes_spike/presentation/core/injections/injections.dart';
import 'package:flutter_web_routes_spike/presentation/router_app.dart';

import 'presentation/core/routes/router_generator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  runApp(RouterApp(
    router: RouteGenerator(),
  ));
}
