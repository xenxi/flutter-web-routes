import 'package:flutter/material.dart';
import 'package:flutter_web_routes_spike/presentation/shared/custom_circle_button.dart';

class StatefullCounterView extends StatefulWidget {
  static String route = '/statefull-counter';
  const StatefullCounterView({Key? key}) : super(key: key);

  @override
  State<StatefullCounterView> createState() => _StatefullCounterViewState();
}

class _StatefullCounterViewState extends State<StatefullCounterView> {
  int numOfClicks = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildText(context),
        const SizedBox(
          height: 20,
        ),
        _buildActions(),
      ],
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
