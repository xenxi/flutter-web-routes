import 'package:flutter/material.dart';
import 'package:flutter_web_routes_spike/presentation/core/routes/i_navigator.dart';
import 'package:flutter_web_routes_spike/presentation/shared/custom_navbar_menu.dart';

class MainPageLayout extends StatelessWidget {
  const MainPageLayout({
    Key? key,
    required this.navigator,
    required this.child,
  }) : super(key: key);

  final INavigator navigator;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustumNavbarMenu(
            navigator: navigator,
          ),
          const Spacer(),
          Expanded(child: child),
          const Spacer(),
        ],
      ),
    );
  }
}
