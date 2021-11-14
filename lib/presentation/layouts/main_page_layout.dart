import 'package:flutter/material.dart';

import 'package:flutter_web_routes_spike/presentation/shared/custom_navbar_menu.dart';

class MainPageLayout extends StatelessWidget {
  const MainPageLayout({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustumNavbarMenu(),
          const Spacer(),
          Expanded(child: child),
          const Spacer(),
        ],
      ),
    );
  }
}
