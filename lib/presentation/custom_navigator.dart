import 'package:flutter/cupertino.dart';

class CustomNavigator {
  final GlobalKey<NavigatorState> key;

  CustomNavigator(this.key);

  Future<void> navigateTo(String routeName) =>
      key.currentState!.pushNamed(routeName);

  void goBack(String routeName) => key.currentState!.pop();
}
