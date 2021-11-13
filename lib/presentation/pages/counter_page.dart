import 'package:flutter/material.dart';
import 'package:flutter_web_routes_spike/presentation/shared/custom_navbar_menu.dart';
import 'package:flutter_web_routes_spike/presentation/shared/custom_circle_button.dart';

class CounterPage extends StatefulWidget {
  static String route = '/counter';
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int numOfClicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustumNavbarMenu(),
          const Spacer(),
          _buildText(context),
          const SizedBox(
            height: 20,
          ),
          _buildActions(),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildText(BuildContext context) => Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Counter: $numOfClicks',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
      );

  Widget _buildActions() => FittedBox(
        fit: BoxFit.cover,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomCircleButton(
              iconData: Icons.remove,
              color: Colors.redAccent,
              onPressed: () => setState(() => numOfClicks--),
            ),
            CustomCircleButton(
              iconData: Icons.add,
              color: Colors.greenAccent,
              onPressed: () => setState(() => numOfClicks++),
            ),
          ],
        ),
      );
}
