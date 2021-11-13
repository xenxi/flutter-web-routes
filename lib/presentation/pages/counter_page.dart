import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  static String route = 'counter';
  const CounterPage({Key? key}) : super(key: key);
  final numOfClicks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Counter: $numOfClicks',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(), padding: const EdgeInsets.all(30)),
            child: const Icon(
              Icons.add,
              size: 35,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
