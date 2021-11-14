import 'package:flutter/material.dart';
import 'package:flutter_web_routes_spike/presentation/router_app.dart';

import 'router_generator.dart';

void main() => runApp(RouterApp(
      router: RouteGenerator(),
    ));
