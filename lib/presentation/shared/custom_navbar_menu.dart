import 'package:flutter/material.dart';
import 'package:flutter_web_routes_spike/presentation/pages/statefull_counter_page.dart';
import 'package:flutter_web_routes_spike/presentation/pages/provider_counter_page.dart';
import 'package:flutter_web_routes_spike/presentation/shared/custom_elevated_button.dart';

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
                Navigator.of(context).pushNamed(StatefullCounterPage.route)),
        CustomTextButton(
            text: 'Counter with provider',
            onPressed: () =>
                Navigator.of(context).pushNamed(ProviderCounterPage.route)),
        CustomTextButton(
            text: 'Non-existent page',
            onPressed: () => Navigator.of(context).pushNamed('asdfsa')),
      ],
    );
  }
}
