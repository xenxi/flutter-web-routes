import 'package:flutter/material.dart';

class GreetView extends StatelessWidget {
  static String route = 'greet';
  final String name;
  final String? message;
  const GreetView({
    Key? key,
    required this.name,
    this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(TextSpan(
            text: 'Hello ',
            style: Theme.of(context).textTheme.headline2,
            children: [
              TextSpan(
                text: name,
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontWeight: FontWeight.bold),
              )
            ])),
        if (message?.isNotEmpty == true)
          Text(
            message!,
            style: Theme.of(context).textTheme.overline,
          ),
      ],
    );
  }
}
