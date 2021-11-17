import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  GlobalKey<NavigatorState> get navigatorState => GlobalKey<NavigatorState>();
}
