import 'package:flutter/cupertino.dart';
import 'package:flutter_web_routes_spike/domain/i_navigator.dart';
import 'package:injectable/injectable.dart';

@injectable
class CustomNavigator implements INavigator {
  final GlobalKey<NavigatorState> key;

  CustomNavigator(this.key);

  @override
  Future<void> navigateTo(String routeName) =>
      key.currentState!.pushNamed(routeName);

  @override
  Future<void> goBack() {
    key.currentState!.pop();
    return Future.value();
  }
}
