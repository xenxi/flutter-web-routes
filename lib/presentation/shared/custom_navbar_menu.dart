import 'package:flutter/material.dart';
import 'package:flutter_web_routes_spike/presentation/shared/custom_elevated_button.dart';
import 'package:flutter_web_routes_spike/presentation/views/provider_counter_view.dart';
import 'package:flutter_web_routes_spike/presentation/views/statefull_counter_view.dart';

class CustumNavbarMenu extends StatelessWidget {
  const CustumNavbarMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('create navbar');
    return Row(
      children: [
        CustomTextButton(
            text: 'Counter with statefull',
            onPressed: () =>
                Navigator.of(context).pushNamed(StatefullCounterView.route)),
        CustomTextButton(
            text: 'Counter with provider',
            onPressed: () =>
                Navigator.of(context).pushNamed(ProviderCounterView.route)),
        CustomTextButton(
            text: 'Non-existent page',
            onPressed: () => Navigator.of(context).pushNamed('asdfsa')),
      ],
    );
  }
}
