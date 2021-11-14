import 'package:flutter/material.dart';
import 'package:flutter_web_routes_spike/presentation/pages/counter_page.dart';
import 'package:flutter_web_routes_spike/presentation/pages/other_counter_page.dart';
import 'package:flutter_web_routes_spike/presentation/shared/custom_elevated_button.dart';

class CustumNavbarMenu extends StatelessWidget {
  const CustumNavbarMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextButton(
            text: 'Page 1',
            onPressed: () =>
                Navigator.of(context).pushNamed(CounterPage.route)),
        CustomTextButton(
            text: 'Page 2',
            onPressed: () =>
                Navigator.of(context).pushNamed(OtherCounterPage.route)),
        CustomTextButton(
            text: 'Non-existent page',
            onPressed: () => Navigator.of(context).pushNamed('asdfsa')),
      ],
    );
  }
}
