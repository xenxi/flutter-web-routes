import 'package:flutter/material.dart';
import 'package:flutter_web_routes_spike/presentation/shared/custom_elevated_button.dart';

class CustumNavbarMenu extends StatelessWidget {
  const CustumNavbarMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextButton(text: 'Page 1', onPressed: () {}),
        CustomTextButton(text: 'Page 2', onPressed: () {}),
      ],
    );
  }
}
