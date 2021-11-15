import 'package:flutter/material.dart';
import 'package:flutter_web_routes_spike/presentation/core/routes/i_navigator.dart';

import 'package:flutter_web_routes_spike/presentation/shared/custom_elevated_button.dart';
import 'package:flutter_web_routes_spike/presentation/views/provider_counter_view.dart';
import 'package:flutter_web_routes_spike/presentation/views/statefull_counter_view.dart';

class CustumNavbarMenu extends StatelessWidget {
  final INavigator navigator;
  const CustumNavbarMenu({
    Key? key,
    required this.navigator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextButton(
            text: 'Counter with statefull',
            onPressed: () => navigator.navigateTo(StatefullCounterView.route)),
        CustomTextButton(
            text: 'Counter with provider',
            onPressed: () => navigator.navigateTo(ProviderCounterView.route)),
        CustomTextButton(
            text: 'Non-existent page',
            onPressed: () => navigator.navigateTo('asdfsa')),
      ],
    );
  }
}
