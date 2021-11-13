import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  static String route = 'counter';
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Hello World'),
    );
  }
}
