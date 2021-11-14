import 'package:flutter/material.dart';
import 'package:flutter_web_routes_spike/presentation/shared/custom_elevated_button.dart';
import 'package:flutter_web_routes_spike/presentation/views/statefull_counter_view.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({Key? key}) : super(key: key);
  static String route = '/404';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '404',
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          'You didn\'t break the internet, but we can\'t find what you are looking for.',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.caption,
        ),
        const SizedBox(
          width: 8,
        ),
        CustomTextButton(
            text: 'Go home',
            onPressed: () =>
                Navigator.of(context).pushNamed(StatefullCounterView.route))
      ],
    );
  }
}
